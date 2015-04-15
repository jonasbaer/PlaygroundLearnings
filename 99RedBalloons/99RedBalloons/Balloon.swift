//
//  Balloon.swift
//  99RedBalloons
//
//  Created by Jonas Baer on 15.04.15.
//  Copyright (c) 2015 jonas-baer.com. All rights reserved.
//

import Foundation
import UIKit

struct Balloon {

    var number = 0
    var imageName = UIImage(named: "")

    func randomizerFunction (maxNumber: Int) -> Int {

        let randomNumber = Int(arc4random_uniform(UInt32(maxNumber)))
        return randomNumber
    }
}