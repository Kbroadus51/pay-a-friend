//
//  ViewController.swift
//  PayAFriend
//
//  Created by Vivek Jayakumar on 14/12/17.
//  Copyright © 2017 Vivek Jayakumar. All rights reserved.
//

import UIKit
import MVisaSDK
import Alamofire

class ViewController: UITableViewController {

    @IBOutlet weak var cardTypeLabel: UITextField!
    @IBOutlet weak var lastFourLabel: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Pay A Friend With Visa"
    }
}

extension ViewController: MVisaPayFriendDelegate {
    @IBAction func initiateMVisaSDKPayFriendFlow() {
        print("Initiating MVisa Pay Friend flow")
        // Init SDK with one time config
        let onetimeConfig = MVisaConfig()
        MVisaSDK.setupOneTimeConfiguration(onetimeConfig)

        // Prepare payee list to be used to create Pay Friend Request
        var payee = [MVisaPayee]()
        payee = [MVisaPayee]()
        payee.append(MVisaPayee(payeeName: "John Smith", lastFour: "1234"))
        payee.append(MVisaPayee(payeeName: "Harry Potter", lastFour: "5680"))
        payee.append(MVisaPayee(payeeName: "Sarah Blackmon", lastFour: "5739"))

        if  cardTypeLabel.text?.isEmpty ?? true || lastFourLabel.text?.isEmpty ?? true {
            notifyUser("Empty Data", message: "Enter sample card information")
            return
        }

        // Prepare consumer card list to be used to create Pay Friend Request
        let card1 = MVisaCardDetails(lastFourDigits: lastFourLabel.text!, cardType: cardTypeLabel.text!, issuerLogo: nil, cardArtColor: nil, cardArtOverlay: nil, networkType: .visa)
        let cards = [card1, card1]

        // Create Pay Friend Request
        let request = MVisaPayFriendRequest(cards: cards, currencyCode: "356", payees: payee, defaultCardIndex: 1)

        // Launch the pay friend flow (commented out using delegate and in place using completion block)
        MVisaSDK.launchPayFriendFlow(request: request) {
            (successful:Bool, payFriendResponse:MVisaPayFriendResponse?, error: MVisaError?) in
            self.payFriendFlowDidFinish(successful, withResponse: payFriendResponse, withError: error)
        }
    }

    func payFriendFlowDidFinish(_ successful: Bool, withResponse payFriendResponse: MVisaPayFriendResponse?, withError error: MVisaError?) {
        print("Pay Friend Flow Did Finish")

        // Close the MVisaSDK
        MVisaSDK.endMVisaFlow()

        // Printing the response in logs
        let responseStr = Helper.getPayFriendResponseStr(successful: successful, response: payFriendResponse, error: error)
        print(responseStr)

        // receiver information
        let receiver = [
            "pan": payFriendResponse?.payeeCardNumber!,
            "name": payFriendResponse?.payeeName
            ] as! [String: String]

        // Information on sender
        let sender = [
            "accountNumber": "xxxxxx",
            "name": "Sender's Name"
        ]

         // Information on transaction
        let transaction = [
            "amount": String.init(format: "%f", payFriendResponse!.transactionAmount),
            "currencyCode": "356"
        ]

        let parameters = ["receiver": receiver, "sender": sender, "transaction": transaction]

        Alamofire.request(Constants.PayAFriendEndpoint, method: .post, parameters: parameters, encoding: JSONEncoding.default)
            .responseJSON { response in
                debugPrint(response)
        }
    }


}

extension UIViewController {
// Alert dialog to show to user
func notifyUser(_ title: String, message: String) {
    let alert = UIAlertController(title: title,
                                  message: message,
                                  preferredStyle: UIAlertControllerStyle.alert)

    let cancelAction = UIAlertAction(title: "OK",
                                     style: .cancel, handler: nil)

    alert.addAction(cancelAction)
    self.present(alert, animated: true, completion: nil)
}

}

