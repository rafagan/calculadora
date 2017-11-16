//
//  ViewController.swift
//  Calculator
//
//  Created by Rafagan Abreu on 13/11/17.
//  Copyright © 2017 CINQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func touchClear(_ sender: UIButton) {
        let title = sender.currentTitle!
        print("\(title)")
    }
    
    @IBAction func touchPlusMinus(_ sender: UIButton) {
        let title = sender.currentTitle!
        print("\(title)")
    }
    
    @IBAction func touchPercentage(_ sender: UIButton) {
        let title = sender.currentTitle!
        print("\(title)")
    }
    
    @IBAction func touchOne(_ sender: UIButton) {
        print("1")
    }
    
    @IBAction func touchTwo(_ sender: UIButton) {
        print("2")
    }
    
    @IBAction func touchThree(_ sender: UIButton) {
        print("3")
    }
    
    @IBAction func touchFour(_ sender: UIButton) {
        print("4")
    }
    
    @IBAction func touchFive(_ sender: UIButton) {
        print("5")
    }
    
    @IBAction func touchSix(_ sender: UIButton) {
        print("6")
    }
    
    @IBAction func touchSeven(_ sender: UIButton) {
        print("7")
    }
    
    @IBAction func touchEight(_ sender: UIButton) {
        print("8")
    }
    
    @IBAction func touchNine(_ sender: UIButton) {
        print("9")
    }
    
}
