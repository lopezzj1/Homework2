//
//  main.swift
//  Homework2
//
//  Created by Jill Lopez on 10/11/15.
//  Copyright © 2015 Jill Lopez. All rights reserved.
//

import Foundation

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

print("4 * 5 = \(mathOp(multiply, firstVar: 4, secondVar: 5))")
print("3 + 10 = \(mathOp(add, firstVar: 3, secondVar: 10))")
