//
//  ViewController.swift
//  Calculator
//
//  Created by Marisa WONG on 16/05/2016.
//  Copyright © 2016 PW. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  // Mark: Variables

  @IBOutlet weak var calculationLabel: UILabel!
  var userIsEnteringNumber = false
  var operationStack = Array <Double> ()
  var calculationValue: Double {
    get {
      return NSNumberFormatter ().numberFromString(calculationLabel.text!)!.doubleValue
    } set {
      calculationLabel.text = "\(newValue)"
    }
    }
  
  // Mark: Buttons
  
  @IBAction func enterNumber(sender: UIButton) {
    let digit = sender.currentTitle!
    
    if userIsEnteringNumber {
      calculationLabel.text = calculationLabel.text! + digit
    } else {
      calculationLabel.text = digit
      userIsEnteringNumber = true
      
    }
  }
  @IBAction func clearButton(sender: AnyObject) {
    calculationValue = 0
    calculationLabel.text = "\(calculationValue)"
  }
  

  @IBAction func postiveNegativeButton(sender: AnyObject) {
  }
  
  @IBAction func percentageButton(sender: AnyObject) {
  }
  
  @IBAction func divideButton(sender: AnyObject) {
    func divide (op1: Double, op2: Double) -> Double {
      return op1 / op2 }
  }
  
  @IBAction func sevenButton(sender: AnyObject) {
  }
  
  @IBAction func eightButton(sender: AnyObject) {
  }
  
  @IBAction func nineButton(sender: AnyObject) {
  }
  
  
  @IBAction func multiplyButton(sender: AnyObject) {
    func multiply (op1: Double, op2: Double) -> Double {
      return op1 * op2 }
  }
  
  @IBAction func fourButton(sender: AnyObject) {
  }
  
  @IBAction func fiveButton(sender: AnyObject) {
  }
  
  @IBAction func sixButton(sender: AnyObject) {
  }
  
  @IBAction func minusButton(sender: AnyObject) {
    func minus (op1: Double, op2: Double) -> Double {
      return op1 - op2 }
    
  }
  
  @IBAction func oneButton(sender: AnyObject) {
  }
  
  @IBAction func twoButton(sender: AnyObject) {
  }
  
  @IBAction func threeButton(sender: AnyObject) {
  }
  
  @IBAction func plusButton(sender: AnyObject) {
    func add (op1: Double, op2: Double) -> Double {
      return op1 + op2 }
  }
  
  @IBAction func zeroButton(sender: AnyObject) {
  }
  
  @IBAction func decimalButton(sender: AnyObject) {
  }
  
  @IBAction func calculateButton(sender: AnyObject) {
    userIsEnteringNumber = false
    operationStack.append(calculationValue)
    
  }
  
  
  // Mark:
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

