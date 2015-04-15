//
//  ViewController.swift
//  99RedBalloons
//
//  Created by Jonas Baer on 15.04.15.
//  Copyright (c) 2015 jonas-baer.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var visibleImage: UIImageView!
    @IBOutlet weak var visibleDescriptionText: UILabel!

    var arrayForBalloon:[Balloon] = []
    var indexOfBalloon = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        //JB : Create an array with instances from our struc and fill it with elements below
//        var firstBalloon = Balloon()
//        firstBalloon.number = 1
//        firstBalloon.imageName = UIImage(named: "RedBalloon1.jpg")
//
//        var secondBalloon = Balloon()
//        secondBalloon.number = 2
//        secondBalloon.imageName = UIImage(named: "RedBalloon2.jpg")
//
//        var thirdBalloon = Balloon()
//        thirdBalloon.number = 3
//        thirdBalloon.imageName = UIImage(named: "RedBalloon3.jpg")
//
//        var fourthBalloon = Balloon()
//        fourthBalloon.number = 4
//        fourthBalloon.imageName = UIImage(named: "RedBalloon4.jpg")

//        self.arrayForBalloon += [firstBalloon, secondBalloon, thirdBalloon, fourthBalloon]

        //JB: Create array with 100 elements
        self.createBalloons()

        //JB : Create the first view
        self.visibleDescriptionText.text = "0 Balloons"
        self.visibleImage.image = UIImage(named: "BerlinTVTower.jpg")!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextButtonPressed(sender: UIBarButtonItem) {

        var instanceOfAccessibleClass = Balloon()

        //JB : Ensure next is not showing the same element again
        var playingIndex:Int
        do {
            playingIndex = instanceOfAccessibleClass.randomizerFunction(99)
//            println("\(playingIndex) is equal to \(indexOfBalloon) ?")
        }
        while self.indexOfBalloon == playingIndex
        self.indexOfBalloon = playingIndex

        //JB : Create an instance of the array
        var chosenBalloon = self.arrayForBalloon[self.indexOfBalloon]

        //JB : Update the view accordingly
        self.visibleDescriptionText.text = "\(chosenBalloon.number) Balloons"
        self.visibleImage.image = chosenBalloon.imageName!
    }

    func createBalloons() {
        for var balloonCount = 0; balloonCount <= 99; ++balloonCount {
            var balloon = Balloon()
            balloon.number = balloonCount

            var randomNumber = balloon.randomizerFunction(4)

            switch randomNumber {
                case 0:
                    balloon.imageName = UIImage(named: "RedBalloon1.jpg")
                    println(1)
                case 1:
                    balloon.imageName = UIImage(named: "RedBalloon2.jpg")
                    println(2)
                case 2:
                    balloon.imageName = UIImage(named: "RedBalloon3.jpg")
                    println(3)
                case 3:
                    balloon.imageName = UIImage(named: "RedBalloon4.jpg")
                    println(4)
                default:
                    println("Ooops something went wrong")
            }
            self.arrayForBalloon.append(balloon)
        }
    }
}

