// Playground - noun: a place where people can play

import UIKit

var carCollection = [""]

func addToArray (arrayElement: String, positionOfArray: Int) -> Int {

    carCollection.insert(arrayElement, atIndex: positionOfArray)
    return carCollection.count
}

addToArray("BMW", 1)


