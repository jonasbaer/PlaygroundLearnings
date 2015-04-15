// Playground - noun: a place where people can play

import UIKit

//JB : Create function
func printHelloWorld () {
    println("Hello World!")
    println("Hello Class")
}

//JB: Execute function
printHelloWorld()


// ----------------------------

//JB : Pass in Parameter into Function
func printNumberSupplied (number: Int, myTitle: String) {
    println("This is the value: \(number)")
    println("The multiple of 3 is: \(number * 3)")
    var numberTimesTwo = number * 2
    numberTimesTwo *= 2
    myTitle
}

printNumberSupplied(5, "test")
//printNumberSupplied(10)


// ----------------------------

//JB : Play around with parameters within functions
func turnOffAppliance (applianceName : String, isOn: Bool) {
    if isOn {
        println("Please turn off the \(applianceName)")
    } else {
        println("I actually turned the \(applianceName) off already.")
    }
}

turnOffAppliance("Stove", true)


// ----------------------------

//JB : Create function with a real output
func additionsFunction (firstArgument: Int, secondArgument: Int) -> Int {
    let sumOfArguments = firstArgument + secondArgument

    return sumOfArguments
}


let variableOutOfFunction = additionsFunction(5, 4)
var finalAnswer = additionsFunction(variableOutOfFunction, 5)

func helloWorldString () -> String {
    printHelloWorld()

    return "hello ^^"
}

var helloWorldFunctionOutput = helloWorldString() + " !!"













