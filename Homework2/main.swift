//
//  main.swift
//  Homework2
//
//  Created by Jill Lopez on 10/11/15.
//  Copyright © 2015 Jill Lopez. All rights reserved.
//

import Foundation

/*Build a calculator*/
//add
let add = {
    (firstVar: Int, secondVar: Int) -> Int in
        return firstVar + secondVar
}

//subtract
let subtract = {
    (firstVar: Int, secondVar: Int) -> Int in
        return firstVar - secondVar
}

//multiply
let multiply = {
    (firstVar: Int, secondVar: Int) -> Int in
        return firstVar * secondVar
}

//divide
let divide = {
    (firstVar: Int, secondVar: Int) -> Int in
        return firstVar/secondVar
}


func mathOp(op : (Int, Int) -> Int, firstVar : Int, secondVar : Int) -> Int
{
    return op(firstVar, secondVar)
}

print("Build a Calculator:")
print("4 * 5 = \(mathOp(multiply, firstVar: 4, secondVar: 5))")
print("3 + 10 = \(mathOp(add, firstVar: 3, secondVar: 10))")

/*Array Fun*/


let addArray = { (nums: [Int]) -> Int in
    var total = 0
    for number in nums {
        total += number
    }
    return total
}

let mulArray = { (nums: [Int]) -> Int in
    var total = 1
    for number in nums {
        total = total * number
    }
    return total
    
}


let countArray = { (nums: [Int]) -> Int in
    return nums.count
}

let avgArray = { (nums: [Int]) -> Int in
    var total = 0
    for number in nums {
        total += number
    }
    return total/nums.count
}


func arrayOp(op : ([Int]) -> Int, nums: [Int]) -> Int
{
    return op(nums)
}


print("")
print("Array Fun:")
print("Adding [2,4,6,8,10]:  \(arrayOp(addArray, nums: [2,4,6,8,10]))")
print("Multiplying [2,4,6,8,10]:  \(arrayOp(mulArray, nums: [2,4,6,8,10]))")
print("Count [2,4,6,8,10]:  \(arrayOp(countArray, nums: [2,4,6,8,10]))")
print("Average [2,4,6,8,10]:  \(arrayOp(avgArray, nums: [2,4,6,8,10]))")


/*Points*/

let addTup = { (firstTup : (Int, Int), secTup : (Int, Int)) -> (Int, Int) in
    return ((firstTup.0 + secTup.0, firstTup.1 + secTup.1))
}

let subTup = { (firstTup : (Int, Int), secTup : (Int, Int)) -> (Int, Int) in
    return ((firstTup.0 - secTup.0, firstTup.1 - secTup.1))
}

print("")
print("Points:")
print("Adding (1,4),(3,2) : \(addTup((1,4),(3,2)))")
print("Subtracting (5,4),(3,2) : \(addTup((5,4),(3,2)))")



