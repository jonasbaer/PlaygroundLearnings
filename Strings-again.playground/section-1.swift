// Playground - noun: a place where people can play

import UIKit

var textPlaceholder = "dkjfkasdf"

var testFixVariables = "This is the text :)"
testFixVariables + textPlaceholder


var testVariable = "Hello there"

var firstCharacter = "!"

var combinedString = testVariable + " " + testFixVariables + firstCharacter

combinedString = combinedString.uppercaseString
combinedString = combinedString.lowercaseString // helpful for password entries

combinedString


var stringForHello = "Hi there"
var x = 5
var newString = "\(x)"

var y = 3.5
var newString2 = "\(y)"

var combinedStringNumber2 = stringForHello + " " + newString + " / " + newString2


//JB : How to convert Strings into an Int

var numberString = "9"
var numberStringToInt = numberString.toInt()!

var numberString2 = "9a"
var numberStringToInt2 = numberString2.toInt()
if numberStringToInt2 != nil {
    var unwrappedParameter = numberStringToInt2!
}

var newResult34 = numberStringToInt + 9


//JB : How to convert a String into a Double

var doubleString = "3.9585"
var doubleValueFromString = Double((doubleString as NSString).doubleValue)
doubleValueFromString += 3.85

var doubleString2 = "4.82323"
var doubleValueFromString2 = Double((doubleString2 as NSString).doubleValue)
doubleValueFromString2 += 4.98


//JB : Shortcuts to reduce lines of code

var randomInt = 5
randomInt += 4
randomInt /= 3
randomInt *= 2
randomInt -= 1


//JB : Learn about Control Flows if / else

let truckSpeed = 45
let lamboSpeed = 120
var mySpeed = 55 // no value yet

if mySpeed < 70 {
    println("Keep Cruising")
}
else {
    println("Slow down police ahead")
}



















