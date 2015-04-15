// Playground - noun: a place where people can play

import UIKit

//JB : Create a random integer 0...5

let randomNumber = Int(arc4random_uniform(UInt32(5)))


for var i = 0 ; i < 10 ; i++ {
    println(Int(arc4random_uniform(UInt32(5))))
}
