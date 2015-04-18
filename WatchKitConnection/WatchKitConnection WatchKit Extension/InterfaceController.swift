//
//  InterfaceController.swift
//  WatchKitConnection WatchKit Extension
//
//  Created by Jonas Baer on 17.04.15.
//  Copyright (c) 2015 jonas-baer.com. All rights reserved.
//

import WatchKit
import Foundation

var key = "FunctionsRequestKey"

class InterfaceController: WKInterfaceController {
    @IBOutlet weak var phoneAnswerMessageLabel: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
        self.phoneAnswerMessageLabel.setText("No answer yet !")

    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func requestPhoneButtonPressed() {
        self.createConnectionToPhone()
//        self.phoneAnswerMessageLabel.setText(self.answerFromPhone)
    }

    func createConnectionToPhone() {

        //JB : Create a dictionary which allows passing info between Watch and Phone
        //JB : Has to be the same key e.g. here "FunctionsRequestKey" like in the PhoneMessage.swift class
        var info = [key : "GetMessage"]

        //JB : Sends the dictionary called info to our Phone (AppDelegate.swift) and expects an answer...
        //JB : Print outs the reply or the error in the case of...
        WKInterfaceController.openParentApplication(info, reply: {
            (reply, error) -> Void in

            println("reply \(reply) error \(error)")

            self.getAnswerFromPhoneAndConvert(reply as [String : String])
            
        })
    }

    func getAnswerFromPhoneAndConvert (answerDictionary : [String : String]) {

        let answerFromPhone = answerDictionary["firstAnswer"]
        self.phoneAnswerMessageLabel.setText(answerFromPhone)
    }
}
