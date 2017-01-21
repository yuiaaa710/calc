//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//let tempNum:String = "123"
//
//var num: [Double] = []
//num.append(atof(tempNum))
//
//num[1] = 4.5
//
//print(num[0])

var tempAns:String = "1+2*3+1"

let Ans1 = NSExpression(format: tempAns)
let Ans2 = Ans1.expressionValue(with: nil, context: nil) as? NSNumber
print("Ans2:\((Ans2)!)")
