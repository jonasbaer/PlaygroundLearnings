//
//  ViewController.swift
//  NewClassPrototype
//
//  Created by Jonas Baer on 11.04.15.
//  Copyright (c) 2015 jonas-baer.com. All rights reserved.
//

import UIKit

var containerForInserts = [""]

// Type of Class Tiger needed ! ! ! and declared here to ensure global accessibility
var myTigers:[Tiger] = []


class ViewController: UIViewController {
    @IBOutlet weak var textEntryField: UITextField!
    @IBOutlet weak var buttonLabel: UIButton!
    @IBOutlet weak var resultOfContainer: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        containerForInserts.append("This is the List: ")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(sender: UIButton) {
        textEntryField.resignFirstResponder()
        var visibleOutputText = ""

        containerForInserts.append(textEntryField.text)

        resultOfContainer.hidden = false

        for var i = 0 ; i < containerForInserts.count ; i++ {
            visibleOutputText += "\(containerForInserts[i]) "
        }

        resultOfContainer.text  = visibleOutputText
    }
}

