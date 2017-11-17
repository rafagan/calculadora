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
    private var binaryOperationMemory: PreviousBinaryOperation?
    
    private enum Operation {
        case unaryOperation((Double) -> Double)
        case binaryOperation((Double, Double) -> Double)
        case equals
        case undefined
    }
    
    private struct PreviousBinaryOperation {
        let function: (Double, Double) -> Double
        let firstOperand: Double
        
        func perform(with secondOperand: Double) -> Double {
            return function(firstOperand, secondOperand)
        }
    }
    
    private let operations: Dictionary<String, Operation> = [
        "√": Operation.unaryOperation(sqrt),
        "±": Operation.unaryOperation(changeSign),
        "+": Operation.binaryOperation(plus),
        "–": Operation.binaryOperation(minus),
        "⨉": Operation.binaryOperation(times),
        "÷": Operation.binaryOperation(division),
        "=": Operation.equals,
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
            case .binaryOperation(let op):
                if accumulator != nil {
                    binaryOperationMemory = PreviousBinaryOperation(function: op, firstOperand: accumulator!)
                    accumulator = nil
                }
            case .equals:
                doPreviousBinaryOperation()
            default:
                break
            }
        }
    }
    
    mutating func doPreviousBinaryOperation() {
        if binaryOperationMemory != nil && accumulator != nil {
            accumulator = binaryOperationMemory!.perform(with: accumulator!)
            binaryOperationMemory = nil
        }
    }
    
    mutating func setOperand(_ operand: Double) {
        accumulator = operand
    }
}
