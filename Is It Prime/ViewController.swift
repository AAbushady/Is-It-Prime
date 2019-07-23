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
            
        } else {
            requestLabel.text = "Needs to be a positive whole number..."
            primeLabel.text = ""
        }
        self.view.endEditing(true)
    }

}

