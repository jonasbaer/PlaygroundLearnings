// Playground - noun: a place where people can play

import UIKit

//JB : Creating an array allows only covering elements of the same type. E.g. Int, Text

//var tigerNames:Array<String>
//var tigerNames = [String]
var tigerNames = ["Tigger", "Tigress", "Jacob", "Spar"]
//tigerNames[2]
var tigerAges = [3, 2, 4, 5]
//tigerAges[0] + tigerAges[1]


//JB : Control Flow allowing print out of full Array
for var indexOfArray = 0; indexOfArray < (tigerAges.count) ; indexOfArray++ {
    println(tigerAges[indexOfArray])
}

var emptyArray:[String] = [] // create empty array


//JB : Important function to check whether Array is empty or not?
if emptyArray.isEmpty {
    println("There are no elements in this array")
}
else {
    println("There are elements in this array")
}


//JB : Function allowing counting of elements in the Array
emptyArray.count

let firstArrayItem = tigerAges[0]
let againfirstArrayItem = tigerNames[0]


//JB : How to add and remove elements to the array

tigerNames.append("CrazyDuck")
tigerNames.count

tigerNames.removeLast()
tigerNames.count


//JB : Simple way to get all elements form array

for tigerName in tigerNames {
    println(tigerName)
}


//JB : Create a For Loop running from 1 to n
for x in 1...5 {
    println(x)
}


//JB : Cool & easy way to get two variables from the array :)

for (index, tigerName) in enumerate(tigerNames) {
    println("Index: \(index), TigerName: \(tigerName)")
}









