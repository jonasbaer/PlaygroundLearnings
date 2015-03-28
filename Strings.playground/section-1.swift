// Playground - noun: a place where people can play

import UIKit

var string1 = ""
string1 = "Hello"
let string2 = "World" // constant ! ! ! will not update later on ! ! !

var helloWorldString = string1 + " " + string2
helloWorldString = helloWorldString.uppercaseString
helloWorldString = helloWorldString.lowercaseString // useful for passwords !

let firstCharacter = "!"

helloWorldString = helloWorldString + firstCharacter

let x = 5
let newString = "\(x) times " + helloWorldString

let doubleValue = 3.5
let newString2 = "\(doubleValue) ! ! " + "!"

let numberString = "9" // 2 steps required ! ! !
var numberStringToInt = numberString.toInt() //creates an optional "some" / nil for not numbers
var optionalToInt = numberStringToInt! //unwrap (!) optional value to number
optionalToInt = optionalToInt + 3
optionalToInt /= 3 // shorter than above

var doubleString = "3.9585"
var doubleValueFromString = Double((doubleString as NSString).doubleValue) // NSString > automatically recognize the type ! 
doubleValueFromString += 3.0415














