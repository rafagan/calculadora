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
    
    func performOperation(_ symbol: String) {
        
    }
    
    mutating func setOperator(_ operation: Double) {
        accumulator = operation
    }
}
