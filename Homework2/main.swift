//
//  main.swift
//  Homework2
//
//  Created by Jill Lopez on 10/11/15.
//  Copyright © 2015 Jill Lopez. All rights reserved.
//

import Foundation

//////////////////////
//Build a calculator//
//////////////////////

func nilError () -> String {
    return "Nil error"
}

func add (firstVar: Int?, secondVar: Int?) -> Int? {
    if firstVar == nil || secondVar == nil {
        nilError()
    }
    return firstVar! + secondVar!
}

func subtract (firstVar: Int?, secondVar: Int?) -> Int? {
    if firstVar == nil || secondVar == nil {
        nilError()
    }
    return firstVar! - secondVar!
}

func multiply (firstVar: Int?, secondVar: Int?) -> Int? {
    if firstVar == nil || secondVar == nil {
        nilError()
    }
    return firstVar! * secondVar!
}

func divide (firstVar: Int?, secondVar: Int?) -> Int? {
    if firstVar == nil || secondVar == nil {
        nilError()
    }
    return firstVar!/secondVar!
}


func mathOp(op : (Int?, Int?) -> Int?, firstVar : Int?, secondVar : Int?) -> Int?
{
    return op(firstVar, secondVar)
}

print("Build a Calculator:")
print("5 + 4 = \(mathOp(add, firstVar: 5, secondVar: 4))")
print("5 - 4 = \(mathOp(subtract, firstVar: 5, secondVar: 4))")
print("5 * 4 = \(mathOp(multiply, firstVar: 5, secondVar: 4))")
print("6 / 3 = \(mathOp(divide, firstVar: 6, secondVar: 3))")

/////////////
//Array Fun//
/////////////


func addArray (nums: [Int]?) -> Int? {
    if nums == nil {
        nilError()
    }
    
    var total = 0
    for number in nums! {
        total += number
    }
    return total
}

func mulArray (nums: [Int]?) -> Int? {
    if nums == nil {
        nilError()
    }
    
    var total = 1
    for number in nums! {
        total = total * number
    }
    return total
}

func countArray (nums: [Int]?) -> Int?{
    if nums == nil {
        nilError()
    }
    
    return nums!.count
}

func avgArray (nums: [Int]?) -> Int? {
    if nums == nil {
        nilError()
    }
    
    var total = 0
    for number in nums! {
        total += number
    }
    return total/nums!.count
}


func arrayOp(op : ([Int]?) -> Int?, nums: [Int]?) -> Int?
{
    return op(nums)
}


print("")
print("Array Fun:")
print("Adding [2,4,6,8,10] =  \(arrayOp(addArray, nums: [2,4,6,8,10]))")
print("Multiplying [2,4,6,8,10] = \(arrayOp(mulArray, nums: [2,4,6,8,10]))")
print("Count [2,4,6,8,10] =  \(arrayOp(countArray, nums: [2,4,6,8,10]))")
print("Average [2,4,6,8,10] =  \(arrayOp(avgArray, nums: [2,4,6,8,10]))")

///////////
//Points//
//////////

func addTup (firstTup : (Int, Int), secTup : (Int, Int)) -> (Int, Int) {
    return ((firstTup.0 + secTup.0, firstTup.1 + secTup.1))
}

func subTup (firstTup : (Int, Int), secTup : (Int, Int)) -> (Int, Int) {
    return ((firstTup.0 - secTup.0, firstTup.1 - secTup.1))
}

func addDictionary (var oneDictionary : [String : Int], var secDictionary : [String : Int]) -> (Int, Int) {
    if oneDictionary["x"] == nil {
        oneDictionary["x"] = 0
    }
    
    if oneDictionary["y"] == nil {
        oneDictionary["y"] = 0
    }
    
    if secDictionary["x"] == nil {
        secDictionary["x"] = 0
    }
    
    if secDictionary["y"] == nil {
        secDictionary["y"] = 0
    }
    
    let xValues = oneDictionary["x"]! + secDictionary["x"]!
    let yValues = oneDictionary["y"]! + secDictionary["y"]!
    
    return (xValues,yValues)
    
}

func subDictionary (var oneDictionary : [String : Int], var secDictionary : [String : Int]) -> (Int, Int) {
    if oneDictionary["x"] == nil {
        oneDictionary["x"] = 0
    }
    
    if oneDictionary["y"] == nil {
        oneDictionary["y"] = 0
    }
    
    if secDictionary["x"] == nil {
        secDictionary["x"] = 0
    }
    
    if secDictionary["y"] == nil {
        secDictionary["y"] = 0
    }
    
    let xValues = oneDictionary["x"]! - secDictionary["x"]!
    let yValues = oneDictionary["y"]! - secDictionary["y"]!
    
    return (xValues,yValues)
    
}

func addDictionary (var oneDictionary : [String : Double], var secDictionary : [String : Double]) -> (Double, Double) {
    if oneDictionary["x"] == nil {
        oneDictionary["x"] = 0
    }
    
    if oneDictionary["y"] == nil {
        oneDictionary["y"] = 0
    }
    
    if secDictionary["x"] == nil {
        secDictionary["x"] = 0
    }
    
    if secDictionary["y"] == nil {
        secDictionary["y"] = 0
    }
    
    let xValues = oneDictionary["x"]! + secDictionary["x"]!
    let yValues = oneDictionary["y"]! + secDictionary["y"]!
    
    return (xValues,yValues)
    
}

func subDictionary (var oneDictionary : [String : Double], var secDictionary : [String : Double]) -> (Double, Double) {
    if oneDictionary["x"] == nil {
        oneDictionary["x"] = 0
    }
    
    if oneDictionary["y"] == nil {
        oneDictionary["y"] = 0
    }
    
    if secDictionary["x"] == nil {
        secDictionary["x"] = 0
    }
    
    if secDictionary["y"] == nil {
        secDictionary["y"] = 0
    }
    
    let xValues = oneDictionary["x"]! - secDictionary["x"]!
    let yValues = oneDictionary["y"]! - secDictionary["y"]!
    
    return (xValues,yValues)
    
}


let values1 = [
    "x" : 5,
    "y" : 4
]

let values2 = [
    "x" : 3,
    "y" : 2
]


let values3 = [
    "x" : 5.0,
    "y" : 4.0
]

let values4 = [
    "x" : 3.0,
    "y" : 2.0
]

print("")
print("Points:")
print("Adding tuples (1,4),(3,2) = \(addTup((1,4),secTup: (3,2)))")
print("Subtracting tuples (5,4),(3,2) = \(addTup((5,4),secTup: (3,2)))")
print("")
print("Adding dictionary (5, 4) + (3, 2) = \(addDictionary(values1, secDictionary: values2))")
print("Subtracting dictionary (5, 4) - (3, 2) =  \(subDictionary(values1, secDictionary: values2))")
print("Adding dictionary (5.0, 4.0) + (3.0, 2.0) =  \(addDictionary(values3, secDictionary: values4))")
print("Subtracting dictionary (5.0, 4.0) - (3.0, 2.0) =  \(subDictionary(values3, secDictionary: values4))")
print("")







