//
//  CalculatorManager.swift
//  Calculator
//
//  Created by Rafagan Abreu on 17/11/17.
//  Copyright © 2017 CINQ. All rights reserved.
//

import Foundation

func changeSign(_ value: Double) -> Double {
    return -value
}

func plus(_ v1: Double, _ v2: Double) -> Double {
    return v1 + v2
}

func minus(_ v1: Double, _ v2: Double) -> Double {
    return v1 - v2
}

func times(_ v1: Double, _ v2: Double) -> Double {
    return v1 * v2
}

func division(_ v1: Double, _ v2: Double) -> Double {
    return v1 / v2
}

struct CalculatorManager {
    private var accumulator: Double?
    
    private enum Operation {
        case unaryOperation((Double) -> Double)
        case binaryOperation((Double, Double) -> Double)
    }
    
    private let operations: Dictionary<String, Operation> = [
        "√": Operation.unaryOperation(sqrt),
        "±": Operation.unaryOperation(changeSign),
        "+": Operation.binaryOperation(plus),
        "-": Operation.binaryOperation(minus),
        "⨉": Operation.binaryOperation(times),
        "÷": Operation.binaryOperation(division),
        //"=": Operation.binaryOperation(???),
        //"%": Operation.binaryOperation(???)
    ]
    
    var result: Double? {
        get {
            return accumulator
        }
    }
    
    mutating func performOperation(_ symbol: String) {
        if let operation = operations[symbol] {
            switch operation {
            case .unaryOperation(let op):
                accumulator = (accumulator != nil ? op(accumulator!) : accumulator)
            default:
                break
            }
        }
    }
    
    mutating func setOperation(_ operation: Double) {
        accumulator = operation
    }
}
