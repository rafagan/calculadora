//
//  ViewController.swift
//  Calculator
//
//  Created by Rafagan Abreu on 13/11/17.
//  Copyright © 2017 CINQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var display: UILabel!
    var userIsTyping: Bool = false
    
    @IBAction func touchClear(_ sender: UIButton) {
        userIsTyping = false
        display?.text = "0"
    }
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsTyping {
            let textDisplay = display?.text ?? ""
            display?.text = textDisplay + digit
        } else {
            display?.text = digit
            userIsTyping = true
        }
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsTyping = false
        if let mathSymbol = sender.currentTitle {
            switch mathSymbol {
            case "+":
                break;
            case "-":
                break;
            case "⨉":
                break;
            case "÷":
                break;
            default:
                break;
            }
        }
    }
}
