//
//  ViewController.swift
//  WatchKitConnection
//
//  Created by Jonas Baer on 17.04.15.
//  Copyright (c) 2015 jonas-baer.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageFromPhone: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        messageFromPhone.text = "No message received yet !"

        NSNotificationCenter.defaultCenter().addObserver(self, selector: ("handleRequest:"), name: "WatchKitDidMakeRequest", object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func getMessageFromPhoneButtonPressed(sender: UIButton) {
//        var phoneMessage = PhoneMessage()
//        messageFromPhone.text = phoneMessage.phoneMessageString
    }


    //JB : WatchKit Notification
    func handleRequest(notification : NSNotification) {

        let phoneMessage = notification.object! as PhoneMessage

        //JB : Only execute when there is a request from the Watch
        if phoneMessage.watchMessageString != nil {

            //JB : requestedAction is the message we got from the watch, e.g. "GetMessage"
            let requestedAction: String = phoneMessage.watchMessageString!

            switch requestedAction {
                case "GetMessage":
                    println("Yeah got the message from the Watch")
                default:
                    println("That didn't work")
            }

            //JB: Here I specify what we reply to the Watch... ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! !

            //JB: Specify a Dictionary with firstAnswer as the key and the value is "Hello from your Phone :)"
            let replyToWatchDictionary = ["firstAnswer" : "Hello from your Phone :)"]

            //JB: Pass this to our PhoneMessage Class
            phoneMessage.replyBlock(replyToWatchDictionary)
        }
    }
}

