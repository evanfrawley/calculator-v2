//
//  main.swift
//  Calculator-v2
//
//  Created by Evan on 4/6/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import Foundation

//TODO: add sub mul div 
//create a func that takes 2 ints and does a math operation

//generic takes in the 2

func add(x:Int, y:Int) -> Int {
    return x + y
}

func sub(x:Int, y:Int) -> Int {
    return x - y
}

func mul(x:Int, y:Int) -> Int {
    return x * y
}

func div(x:Int, y:Int) -> Int {
    return x / y
}

func doMath(x:Int, y:Int, op:String) -> Int? {
    if op == "+" {
        return add(x, y:y)
    } else if op == "-" {
        return sub(x, y:y)
    } else if op == "*" {
        return mul(x, y:y)
    } else if op == "/" {
        return div(x, y:y)
    }
    return nil
}

// TEST CALLS
// ADDING
print("Test: 1 + 2 = \(doMath(1, y: 2, op: "+")!)")
print("Test: 3 + 4 =  \(doMath(3, y: 4, op: "+")!)")
print("Test: 500 + 300 = \(doMath(500, y: 300, op: "+")!)")
print("")
// SUBTRACTING
print("Test: 1 - 1 = \(doMath(1, y: 1, op: "-")!)")
print("Test: 10 - 3 = \(doMath(10, y: 3, op: "-")!)")
print("Test: 1 - 7 = \(doMath(1, y: 7, op: "-")!)")
print("")
// MULTIPLYING
print("Test: 5 * 5 = \(doMath(5, y: 5, op: "*")!)")
print("Test: 3 * 15 = \(doMath(3, y: 15, op: "*")!)")
print("Test: 2 * 8 = \(doMath(2, y: 8, op: "*")!)")
print("")
// DIVIDING
print("Test: 5 / 5 =\(doMath(5, y: 5, op: "/")!)")
print("Test: 9 / 3 = \(doMath(9, y: 3, op: "/")!)")
print("Test: 49 / 7 = \(doMath(49, y: 7, op: "/")!)")
print("")


//arrays: can add / multiply all the shit in an array
//count and avg for arrays
//to a generic math operation

func addArr(array:[Int]) -> Int {
    var sum = 0
    for index in 0 ... array.count - 1 {
        sum += array[index]
    }
    return sum
}

func mulArr(array:[Int]) -> Int {
    var product = array[0]
    if(array.count > 1) {
        for index in 1 ... array.count - 1 {
            product *= array[index]
        }
    }
    return product
}

func avgArr(array:[Int]) -> Int {
    var total = 0
    for index in 0 ... array.count - 1 {
        total += array[index]
    }
    return total / array.count
}

func arrayMath(array:[Int], op:String) -> Int? {
    if array.count == 0 {
        return 0
    }
    if op == "+" {
        return addArr(array)
    } else if op == "*" {
        return mulArr(array)
    } else if op == "avg" {
        return avgArr(array)
    } else if op == "count" {
        return array.count
    }
    return nil
}

// TEST 1
let test1 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
print("Test: Adding on \(test1): \(arrayMath(test1, op: "+")!)")
print("Test: Multiplying on \(test1): \(arrayMath(test1, op: "*")!)")
print("Test: Average of \(test1): \(arrayMath(test1, op: "avg")!)")
print("Test: Count of \(test1): \(arrayMath(test1, op: "count")!)")
print("")
// TEST 2
let test2: [Int] = []
print("Test: Adding on \(test2): \(arrayMath(test2, op: "+")!)")
print("Test: Multiplying on \(test2): \(arrayMath(test2, op: "*")!)")
print("Test: Average of \(test2): \(arrayMath(test2, op: "avg")!)")
print("Test: Count of \(test2): \(arrayMath(test2, op: "count")!)")
print("")
// TEST 3
let test3 = [3, 55, 1, 2, 3, 56, 4]
print("Test: Adding on \(test3): \(arrayMath(test3, op: "+")!)")
print("Test: Multiplying on \(test3): \(arrayMath(test3, op: "*")!)")
print("Test: Average of \(test3): \(arrayMath(test3, op: "avg")!)")
print("Test: Count of \(test3): \(arrayMath(test3, op: "count")!)")
print("")
// TEST 4
let test4 = [7, 1, 2]
print("Test: Adding on \(test4): \(arrayMath(test4, op: "+")!)")
print("Test: Multiplying on \(test4): \(arrayMath(test4, op: "*")!)")
print("Test: Average of \(test4): \(arrayMath(test4, op: "avg")!)")
print("Test: Count of \(test4): \(arrayMath(test4, op: "count")!)")
print("")
// TEST 5
let test5 = [1]
print("Test: Adding on \(test5): \(arrayMath(test5, op: "+")!)")
print("Test: Multiplying on \(test5): \(arrayMath(test5, op: "*")!)")
print("Test: Average of \(test5): \(arrayMath(test5, op: "avg")!)")
print("Test: Count of \(test5): \(arrayMath(test5, op: "count")!)")
print("")




//points use tuples to represent x/y point pairs
typealias CarPt = (Int, Int)

let cp1 = (1,1)
let cp2 = (2,2)
let cp3 = (3,4)
//add and sub pairs (2 func)

func addPts(one:CarPt, two:CarPt) -> CarPt {
    return(one.0 + two.0, one.1 + two.1)
}

func subPts(one:CarPt, two:CarPt) -> CarPt {
    return(one.0 - two.0, one.1 - two.1)
}

print("Test: Adding CarPts: \(addPts(cp1, two:cp2))")
print("Test: Adding CarPts: \(addPts(cp2, two:cp3))")
print("Test: Adding CarPts: \(addPts(cp1, two:cp3))")
print("")
print("Test: Adding CarPts: \(subPts(cp1, two:cp2))")
print("Test: Adding CarPts: \(subPts(cp2, two:cp3))")
print("Test: Adding CarPts: \(subPts(cp1, two:cp3))")
print("")




//use dict to rep x/y pts

var point1 = [
    "x": 1,
    "y": 1,
]

var point2 = [
    "x": 3,
    "y": 4,
]

var point3 = [
    "x": 3,
    "y": 4,
]

var point4 = [
    "x": 17,
    "y": 9,
]

var point5 = [
    "x": 0,
    "y": 0,
]


func dictAdd(one:Dictionary<String,Int>, two:Dictionary<String,Int>) -> Dictionary<String,Int>? {
    if one["x"] == nil || one["y"] == nil || two["x"] == nil || two["y"] == nil {
        return(nil)
    }
    let newX = one["x"]! + two["x"]!
    let newY = one["y"]! + two["y"]!
    let newDict = [
        "x": newX,
        "y": newY,
    ]
    return(newDict)
}

func dictSub(one:Dictionary<String,Int>, two:Dictionary<String,Int>) -> Dictionary<String,Int>? {
    if one["x"] == nil || one["y"] == nil || two["x"] == nil || two["y"] == nil {
        return(nil)
    }
    let newX = one["x"]! - two["x"]!
    let newY = one["y"]! - two["y"]!
    let newDict = [
        "x": newX,
        "y": newY,
        ]
    return(newDict)
}

print("Test: Adding: \(point1) and \(point3): \(dictAdd(point1, two:point3)!)")
print("Test: Adding: \(point1) and \(point2): \(dictAdd(point1, two:point2)!)")
print("Test: Adding: \(point5) and \(point4): \(dictAdd(point5, two:point4)!)")
print("")


//dictionaries with x and y not existing and doubles there


