//
//  Helper.swift
//  MVisaSDKPrototypeSwift
//
//

import Foundation
import  UIKit
import  MVisaSDK

class Helper {
    static let visaColor = UIColor(red:0.08, green:0.10, blue:0.32, alpha:1.0)
    static func getPayFriendResponseStr(successful: Bool, response: MVisaPayFriendResponse?, error: MVisaError?) -> String {
        var responseStr = "SUCCESSFUL: " + String(successful) + "\n"
        if successful {
           
            responseStr = responseStr + "RESPONSE:\n"
            responseStr = responseStr + "newUser: " + getStr(field: response?.newUser as AnyObject?) + "\n"
            responseStr = responseStr + "payeeCardNumber: " + getStr(field: response?.payeeCardNumber as AnyObject?) + "\n"
            responseStr = responseStr + "payeeIndex: " + getStr(field: response?.payeeIndex as AnyObject?) + "\n"
            responseStr = responseStr + "payeeName: " + getStr(field: response?.payeeName as AnyObject?) + "\n"
            responseStr = responseStr + "senderCardIndex: " + getStr(field: response?.senderCardIndex as AnyObject?) + "\n"
            responseStr = responseStr + "shouldAddNewUserToPayeeList: " + getStr(field: response?.shouldAddNewUserToPayeeList as AnyObject?) + "\n"
            responseStr = responseStr + "transactionAmount: " + getStr(field: response?.transactionAmount as AnyObject?) + "\n"
        } else {
            responseStr = "ERROR:\n"
            for e in error!.errorCodes {
                responseStr = String(e) + "\n"
            }
        }
        return responseStr
        
    }
    
    static func getPayMerchantResponseStr(successful: Bool, response: MVisaPayMerchantResponse?, error: MVisaError?) -> String {
        var responseStr = "SUCCESSFUL: " + String(successful) + "\n"
        if successful {
            responseStr = responseStr + "RESPONSE:\n"
            responseStr = responseStr + "merchantName: " + getStr(field: response?.merchantName as AnyObject?) + "\n"
            responseStr = responseStr + "billAmount: " + getStr(field: response?.transactionAmount as AnyObject?) + "\n"
            responseStr = responseStr + "additionalAmount: " + getStr(field: response?.additionalAmount as AnyObject?) + "\n"
            responseStr = responseStr + "primaryID: " + getStr(field: response?.primaryID as AnyObject?) + "\n"
            responseStr = responseStr + "secondaryID: " + getStr(field: response?.secondaryID as AnyObject?) + "\n"
            responseStr = responseStr + "cardIndex: " + getStr(field: response?.selectedCardIndex as AnyObject?) + "\n"
            responseStr = responseStr + "currencyCode: " + getStr(field: response?.currencyCode as AnyObject?) + "\n"
            responseStr = responseStr + "country: " + getStr(field: response?.countryCode as AnyObject?) + "\n"
            responseStr = responseStr + "city: " + getStr(field: response?.cityName as AnyObject?) + "\n"
            responseStr = responseStr + "merchantCategoryCode: " + getStr(field: response?.merchantCategoryCode as AnyObject?) + "\n"
            responseStr = responseStr + "payloadFormatIndicator: " + getStr(field: response?.payloadFormatIndicator as AnyObject?) + "\n"
            responseStr = responseStr + "pointOfInitiation: " + getStr(field: response?.pointOfInitiation as AnyObject?) + "\n"
            responseStr = responseStr + "postalCode: " + getStr(field: response?.postalCode as AnyObject?) + "\n"
            responseStr = responseStr + "masterCardPAN1: " + getStr(field: response?.masterCardPAN1 as AnyObject?) + "\n"
            responseStr = responseStr + "masterCardPAN2: " + getStr(field: response?.masterCardPAN2 as AnyObject?) + "\n"
            responseStr = responseStr + "npciid1: " + getStr(field: response?.npciid1 as AnyObject?) + "\n"
            responseStr = responseStr + "npciid2: " + getStr(field: response?.npciid2 as AnyObject?) + "\n"
            responseStr = responseStr + "crc: " + getStr(field: response?.crc as AnyObject?) + "\n"
            responseStr = responseStr + "tag03: " + getStr(field: response?.tag03 as AnyObject?) + "\n"
            responseStr = responseStr + "tag08: " + getStr(field: response?.tag08 as AnyObject?) + "\n"
//            responseStr = responseStr + "tag09: " + getStr(field: response?.tag09 as AnyObject?) + "\n"
//            responseStr = responseStr + "tag10: " + getStr(field: response?.tag10 as AnyObject?) + "\n"
//            responseStr = responseStr + "tag11: " + getStr(field: response?.tag11 as AnyObject?) + "\n"
//            responseStr = responseStr + "tag12: " + getStr(field: response?.tag12 as AnyObject?) + "\n"
//            responseStr = responseStr + "tag14: " + getStr(field: response?.tag14 as AnyObject?) + "\n"
//            responseStr = responseStr + "tag15: " + getStr(field: response?.tag15 as AnyObject?) + "\n"
            responseStr = responseStr + "additionalDataField: " + getStr(field: response?.additionalDataField as AnyObject?) + "\n"
            responseStr = responseStr + "billID: " + getStr(field: response?.billID as AnyObject?) + "\n"
            responseStr = responseStr + "mobileNumber: " + getStr(field: response?.mobileNumber as AnyObject?) + "\n"
            responseStr = responseStr + "storeID: " + getStr(field: response?.storeID as AnyObject?) + "\n"
            responseStr = responseStr + "loyaltyNumber: " + getStr(field: response?.loyaltyNumber as AnyObject?) + "\n"
            responseStr = responseStr + "referenceID: " + getStr(field: response?.referenceID as AnyObject?) + "\n"
            responseStr = responseStr + "consumerID: " + getStr(field: response?.consumerID as AnyObject?) + "\n"
            responseStr = responseStr + "terminalID: " + getStr(field: response?.terminalID as AnyObject?) + "\n"
            responseStr = responseStr + "purpose: " + getStr(field: response?.purpose as AnyObject?) + "\n"
            responseStr = responseStr + "additionalConsumerDataRequest: " + getStr(field: response?.additionalConsumerDataRequest as AnyObject?) + "\n"
            responseStr = responseStr + "addDataMasterCard1: " + getStr(field: response?.addDataMasterCard1 as AnyObject?) + "\n"
            responseStr = responseStr + "addDataMasterCard2: " + getStr(field: response?.addDataMasterCard2 as AnyObject?) + "\n"
            responseStr = responseStr + "addDataNpci1: " + getStr(field: response?.addDataNpci1 as AnyObject?) + "\n"
            responseStr = responseStr + "addDataNpci1: " + getStr(field: response?.addDataNpci1 as AnyObject?) + "\n"
            responseStr = responseStr + "tagSixtyTwo10: " + getStr(field: response?.tagSixtyTwo10 as AnyObject?) + "\n"
//            responseStr = responseStr + "tagSixtyTwo15: " + getStr(field: response?.tagSixtyTwo15 as AnyObject?) + "\n"
//            responseStr = responseStr + "tagSixtyTwo16: " + getStr(field: response?.tagSixtyTwo16 as AnyObject?) + "\n"
//            responseStr = responseStr + "tagSixtyTwo17: " + getStr(field: response?.tagSixtyTwo17 as AnyObject?) + "\n"
//            responseStr = responseStr + "tagSixtyTwo18: " + getStr(field: response?.tagSixtyTwo18 as AnyObject?) + "\n"
//            responseStr = responseStr + "tagSixtyTwo19: " + getStr(field: response?.tagSixtyTwo19 as AnyObject?) + "\n"
//            responseStr = responseStr + "tagSixtyTwo20: " + getStr(field: response?.tagSixtyTwo20 as AnyObject?) + "\n"
//            responseStr = responseStr + "tagSixtyTwo21: " + getStr(field: response?.tagSixtyTwo21 as AnyObject?) + "\n"
//            responseStr = responseStr + "tagSixtyTwo22: " + getStr(field: response?.tagSixtyTwo22 as AnyObject?) + "\n"

        } else {
            responseStr = "ERROR:\n"
            for e in error!.errorCodes {
                responseStr = String(e) + "\n"
            }
        }
        return responseStr
    }
    
    static func getWithdrawCashResponseStr(successful: Bool, response: MVisaWithdrawCashResponse?, error: MVisaError?) -> String {
        var responseStr = "SUCCESSFUL: " + String(successful) + "\n"
        if successful {
            responseStr = responseStr + "RESPONSE:\n"
            responseStr = responseStr + "agentID: " + getStr(field: response?.agentID as AnyObject?) + "\n"
            responseStr = responseStr + "agentName: " + getStr(field: response?.agentName as AnyObject?) + "\n"
            responseStr = responseStr + "transactionAmount: " + getStr(field: response?.transactionAmount as AnyObject?) + "\n"
            responseStr = responseStr + "selectedCardIndex: " + getStr(field: response?.selectedCardIndex as AnyObject?) + "\n"
            responseStr = responseStr + "currencyCode: " + getStr(field: response?.currencyCode as AnyObject?) + "\n"
            responseStr = responseStr + "merchantCategoryCode: " + getStr(field: response?.mcc as AnyObject?) + "\n"
            responseStr = responseStr + "city: " + getStr(field: response?.city as AnyObject?) + "\n"
            responseStr = responseStr + "country: " + getStr(field: response?.country as AnyObject?) + "\n"
        } else {
            responseStr = "ERROR:\n"
            for e in error!.errorCodes {
                responseStr = String(e) + "\n"
            }
        }
        return responseStr
    }
    
    static func getStr(field: AnyObject?) -> String {
        if let value = field {
            return String(describing: value)
        } else {
            return "nil"
        }
    }

}
