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
    }
    
    @IBAction func calculateTapped(_ sender: Any) {
        var i = 2
        var isPrime = true
        
        if Int(inputField.text!) != nil {
            let number = Int(inputField.text!)
            if number == 1 {
                isPrime = false
            }
            
            while i < number! {
                if number! % i == 0 {
                    isPrime = false
                    break
                }
                i += 1
            }
            requestLabel.text = "The Result Is..."
            requestLabel.textColor = UIColor.black
            if isPrime {
                primeLabel.text = "PRIME!!!"
                primeLabel.textColor = UIColor.green
            } else {
                primeLabel.text = "Not Prime..."
                primeLabel.textColor = UIColor.red
            }
        } else {
            requestLabel.text = "Positive whole number..."
            requestLabel.textColor = UIColor.red
            primeLabel.text = ""
        }
        self.view.endEditing(true)
    }

}

