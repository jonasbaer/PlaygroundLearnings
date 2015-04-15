//
//  ViewController.swift
//  DogYears-again
//
//  Created by Jonas Baer on 29.03.15.
//  Copyright (c) 2015 jonas-baer.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelForYearsResult: UILabel!
    @IBOutlet weak var insertFieldForYears: UITextField!
    @IBOutlet weak var convertButtonLabel: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func converButtonPressed(sender: UIButton) {

        var convertedFieldText = insertFieldForYears.text.toInt()!

        if convertedFieldText > 2 {
            var convertResult = (10.5 * 2) + (4.0 * ((Double(convertedFieldText) - 2)))
            labelForYearsResult.text = "This are \(convertResult) years for a human ! "
        }
        else if convertedFieldText <= 2 {
            var convertResult = 10.5 * Double(convertedFieldText)
            labelForYearsResult.text = "This are \(convertResult) years for a human ! "
        }

        insertFieldForYears.text = ""
        insertFieldForYears.resignFirstResponder()
    }
}

