//
//  ViewController.swift
//  Is It Prime
//
//  Created by Alexander Abushady on 7/23/19.
//  Copyright © 2019 Alexander Abushady. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var requestLabel: UILabel!
    @IBOutlet weak var primeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // This will look for a tap within the View Controller. If it finds a tap it will use the dimissKeyBoard function.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action:Selector(("dismissKeyBoard")))
        view.addGestureRecognizer(tap)
    }
    
    // Add Objective-C function that dismisses the software keyboard.
    @objc func dismissKeyBoard() {
        view.endEditing(true)
    }
    
    @IBAction func calculateTapped(_ sender: Any) {
        // The i variable is used to regulate the while loop and check if number is prime or not.
        var i = 2
        // This bool tells whether a number is prime or not.
        var isPrime = true
        
        // If statement is for making sure that nil wont be passed.
        if Int(inputField.text!) != nil {
            // Pass input into the constant number.
            let number = Int(inputField.text!)
            
            // 0 and 1 can never be a prime number!
            if number! <= 1 {
                isPrime = false
            }
            
            // While loop that checks with i if a number can be divisible by any number besides 1 and itself.
            while i < number! {
                if number! % i == 0 {
                    isPrime = false
                    // If a number cleanly divides we can stop the loop.
                    break
                }
                // Iterating the loop.
                i += 1
            }
            // When checking is complete we can give the results!
            requestLabel.text = "The Result Is..."
            requestLabel.textColor = UIColor.black
            if isPrime {
                primeLabel.text = "PRIME!!!"
                primeLabel.textColor = UIColor.green
            } else {
                primeLabel.text = "Not Prime..."
                primeLabel.textColor = UIColor.red
            }
        // If invalid input is entered the user is told so.
        } else {
            requestLabel.text = "Positive whole number..."
            requestLabel.textColor = UIColor.red
            primeLabel.text = ""
        }
        // Dismiss the keyboard when the button is pressed.
        self.view.endEditing(true)
    }

}

