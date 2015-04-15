//
//  ViewController.swift
//  IdeaListClone
//
//  Created by Jonas Baer on 04.04.15.
//  Copyright (c) 2015 jonas-baer.com. All rights reserved.
//

import UIKit

var ideasArray = ["", "", ""]
var index = 0

class ViewController: UIViewController {

    @IBOutlet weak var newIdeaInput: UITextField!
    @IBOutlet weak var addButtonLabel: UIButton!
    @IBOutlet weak var ideaTitle1: UILabel!
    @IBOutlet weak var ideaTitle2: UILabel!
    @IBOutlet weak var ideaTitle3: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addButtonPressed(sender: UIButton) {

        ideasArray.removeAtIndex(index)
        ideasArray.insert(newIdeaInput.text, atIndex : index)
        println(ideasArray)


        switch index
        {
        case 0:
            ideaTitle1.text = "1#: \(ideasArray[0])"
            ideaTitle1.hidden = false
        case 1:
            ideaTitle2.text = "2#: \(ideasArray[1])"
            ideaTitle2.hidden = false

        case 2:
            ideaTitle3.text = "3#: \(ideasArray[2])"
            ideaTitle3.hidden = false

        default:
            println("Oops something break")
        }

        newIdeaInput.text = ""
        newIdeaInput.resignFirstResponder()

        //JB : Set index for the next insert
        if index < 2 {
            index++
        }
        else {
            index = 0
        }
    }
}

