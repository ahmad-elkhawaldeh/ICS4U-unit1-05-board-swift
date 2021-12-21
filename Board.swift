//
//  Board.swift
//
//  Created by Ahmad El-khawaldeh
//  Created on 2020-01-01
//  Version 1.0
//  Copyright (c) 2020 MTHS. All rights reserved.
//
//  The Board foot  program
//

import Foundation

enum MyError: Error {
  case invalidDouble(String)
}

func boardFootCalculator(width: String, height: String) throws -> Double {
  let widthDouble: Double = Double(width)!
  let heightDouble: Double = Double(height)!
  let BOARDFOOT: Double = 144.0
  let length: Double = BOARDFOOT / (widthDouble * heightDouble)
  return length
}

print("What is the width of the wood?")
let input1 = readLine()

print("What is the height of the wood?")
let input2 = readLine()

do {
  let length: Double
  try length = boardFootCalculator(width: input1!, height: input2!)
  print("\nThe wood should be  :\(length) inches.")
} catch {
  print("\nError not an integer.")
}

print("\nDone.\n")
