# Pay A Friend With Visa
> Disclaimer: Disclaimer: This is a reference implementation of an **Example Projects** described at [Visa Developer Center – Innovation Corner](https://developer.visa.com/innovation-corner). This is not intended for production use.

Help enable making payment to a friend quickly, using a mobile app to transfer funds between an enrolled cardholder’s eligible Visa card and a friend or family member’s eligible Visa card.


## Prerequisites
An Apple Developer account. 
- A recent version of the development software for the use with such provider's devices (in this case we used The Apple iOS     mobile development platform. You may choose to do otherwise
- A Visa Developer Platform account [Register Here].
- A new project with Visa Direct as an API [Create here].
- A dependency manager tool to install third party libraries (in this case we used Cocoapods)
- The mVisa and mVisa merchant SDKs [Download Here].

## Setup
1.  Obtain the application code.

2.  Clone the pay a friend Visa GitHub repository or download the code.

3.  Drag and drop the mVisa and mVisa merchant SDKs to the project root folder.

4.  Using a Terminal application, navigate to the project folder and then install the required dependency libraries. Type:

```sh
$pod install
```

5. Open the workspace file .xcworkspace.

6. Once you setup a server endpoint with VDP API node.js client, link the PayAFriend endpoint to the server endpoint. In `Constants.swift`
```swift
static let PayAFriendEndpoint: String = "YOUR_ENDPOINT"
```
7. In the ViewController.swift file, enter sample payee information, including:
     - The last four digits of the card in lastFour.
     - Friend’s name in PayeeName.


## Run the App
- After you've built the application, run it on a connected device.
- Connect your smart phone to your computer.
- Run the application with the device as the target.
- Enter Sample information for card type and Last four digits of card 
- Select the sample contact you created.
- Enter an amount and then tap Pay.
- The amount is transferred between cards and confirmations are sent.



   [Register Here]: <https://developer.visa.com/portal/#users/new>
   [Create here]: <https://developer.visa.com/vdpguide#create_project>
   [Download Here]: <https://developer.visa.com/capabilities/visa_direct/docs#using_mvisa_sdk>
   [Setup Instructions]: <https://cocoapods.org/>

## Built With

- mVisa SDK for iOS [Download Here]

## Release History


* 1.0.2
    * Name change
    * Added UI for entering customer card information
* 1.0.1
    * First version

## License

© Copyright 2018 Visa. All Rights Reserved.

NOTICE: The software and accompanying information and documentation (together, the “Software”) remain the property of and are proprietary to Visa and its suppliers and affiliates. The Software remains protected by intellectual property rights and may be covered by U.S. and foreign patents or patent applications. The Software is licensed and not sold.

By accessing the Software you are agreeing to Visa's terms of use (developer.visa.com/terms) and privacy policy (developer.visa.com/privacy). In addition, all permissible uses of the Software must be in support of Visa products, programs and services provided through the Visa Developer Program (VDP) platform only (developer.visa.com). THE SOFTWARE AND ANY ASSOCIATED INFORMATION OR DOCUMENTATION IS PROVIDED ON AN “AS IS,” “AS AVAILABLE,” “WITH ALL FAULTS” BASIS WITHOUT WARRANTY OR CONDITION OF ANY KIND. YOUR USE IS AT YOUR OWN RISK.

All brand names are the property of their respective owners, used for identification purposes only, and do not imply product endorsement or affiliation with Visa. Any links to third party sites are for your information only and equally do not constitute a Visa endorsement. Visa has no insight into and control over third party content and code and disclaims all liability for any such components, including continued availability and functionality. Benefits depend on implementation details and business factors and coding steps shown are exemplary only and do not reflect all necessary elements for the described capabilities. Capabilities and features are subject to Visa’s terms and conditions and may require development, implementation and resources by you based on your business and operational details. Please refer to the specific API documentation for details on the requirements, eligibility and geographic availability.

This Software includes programs, concepts and details under continuing development by Visa. Any Visa features, functionality, implementation, branding, and schedules may be amended, updated or canceled at Visa’s discretion. The timing of widespread availability of programs and functionality is also subject to a number of factors outside Visa’s control, including but not limited to deployment of necessary infrastructure by issuers, acquirers, merchants and mobile device manufacturers.


   [Register Here]: <https://developer.visa.com/portal/#users/new>
   [Create here]: <https://developer.visa.com/vdpguide#create_project>
   [Download Here]: <https://developer.visa.com/capabilities/visa_direct/docs#using_mvisa_sdk>
   [Setup Instructions]: <https://cocoapods.org/>
   [Github Page]: <https://github.com/Alamofire/Alamofire>


