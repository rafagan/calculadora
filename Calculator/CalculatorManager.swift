//
//  CalculatorManager.swift
//  Calculator
//
//  Created by Rafagan Abreu on 17/11/17.
//  Copyright © 2017 CINQ. All rights reserved.
//

import Foundation

struct CalculatorManager {
    private var accumulator: Double?
    
    var result: Double? {
        get {
            return accumulator
        }
    }
    
    mutating func performOperation(_ symbol: String) {
        if let value = accumulator {
            switch symbol {
            case "√":
                accumulator = sqrt(value)
                break;
            case "±":
                accumulator = -value
                break;
            case "+":
                break;
            case "-":
                break;
            case "⨉":
                break;
            case "÷":
                break;
            case "=":
                break;
            case "%":
                break;
            default:
                break;
            }
        }
    }
    
    mutating func setOperation(_ operation: Double) {
        accumulator = operation
    }
}
