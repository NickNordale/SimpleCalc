//
//  main.swift
//  SimpleCalc
//
//  Created by Nick Nordale on 4/4/16.
//  Copyright © 2016 Nick Nordale. All rights reserved.
//

import Foundation

print("For basic calculations (+, -, *, /, %), enter an expression separated by returns.")
print("For counts and averages, enter a set of numbers on one line separated by a space and follow the set with either 'count' or 'avg'.")
print("For factorials, type the number followed by 'fact' on one line.")

let firstLine = readLine(stripNewline: true)!
let inputArr = firstLine.componentsSeparatedByString(" ")

if inputArr.count > 1 {
    switch inputArr[inputArr.count - 1] {
    case "count":
        print("Result:  \(inputArr.count - 1)")
    case "avg":
        var sum = 0
        for index in 0 ... (inputArr.count - 2) {
            var currNum = Int.init(inputArr[index])!
            sum += currNum
        }
        print("Result:  \(Double(sum)/Double((inputArr.count - 1)))")
    case "fact":
        var total = 1
        if inputArr.count > 2 {
            print("Error, fact only takes one integer argument")
        } else {
            var num = Int.init(inputArr[0])!;
            while num > 0 {
                total = total * num
                num -= 1
            }
        }
        print("Result:  \(total)")
    default:
        print("Error, invalid operation")
    }
} else {
    let first = UInt.init(inputArr[0])!
    
    let operation = readLine(stripNewline: true)!
    
    let secondLine = readLine(stripNewline: true)!
    let second = UInt.init(secondLine)!
    
    switch operation {
    case "+":
        print("Result:  \(first + second)")
    case "-":
        print("Result:  \(first - second)")
    case "*":
        print("Result:  \(first * second)")
    case "/":
        print("Result:  \(first / second)")
    case "%":
        print("Result:  \(first % second)")
    default:
        print("Error, invalid operation")
    }

}


