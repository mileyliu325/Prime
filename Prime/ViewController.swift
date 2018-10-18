//
//  ViewController.swift
//  Prime
//
//  Created by Simeng Liu on 18/10/18.
//  Copyright © 2018 Simeng Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var numberTextField: UITextField!
    
    @IBOutlet var isPrimeButton: UIButton!
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func isPrime(_ sender: Any) {
        if let userEnteredString = numberTextField.text {
            let userEnteredInteger = Int(userEnteredString)
            if let number = userEnteredInteger {
                
                var isPrime = true
                if number == 1 {
                    isPrime = false
                }
                var i = 2
                while i < number {
                    if number%i == 0 {
                        isPrime = false
                    }
                    i += 1
                }
                
                if isPrime == true {
                    resultLabel.text = " \(number) is Prime"
                }
                else {
                    resultLabel.text = " \(number) is not Prime"
                }
                
            }else {
                resultLabel.text = "Please enter a positive whole number"
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

