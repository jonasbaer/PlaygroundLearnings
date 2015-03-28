// Playground - noun: a place where people can play

import UIKit

/* type Aliases - redefine class names on the go
Why? not really helpful - better use real SWIFT terminology ! ! !
*/
typealias WholeNumber = Int
typealias NumberWithDecimal = Double


var x:WholeNumber = 49
var y = 10

var additionAnswer = x + y
var multiplicationAnswer = x * y
var subtractionAnswer = x - y
var divisionAnswer = x / y // rounding strange ! ! !

var discountOnShoesAtStore = 0.3
var priceOfShoes:NumberWithDecimal = 33

var priceAfterDiscount = priceOfShoes * (1.0 - discountOnShoesAtStore)
var downPayment = 10.5
priceAfterDiscount = priceAfterDiscount - downPayment

// variable names shoud not include specific SWIFT terminology

var z = 33
z = 44

var largeNumber = 1_100_000_000_000 // cool to read like this







//var currentYear:Double = 2015
//var durationOfStay = 2.5
//var timeToBeBack = currentYear + durationOfStay

//var nameOfPerson = "Otto"
//var textCombination = nameOfPerson + " " + nameOfPerson











