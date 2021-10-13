//
//  ViewController.swift
//  bmi
//
//  Created by Macbook on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var tf1: UITextField!
    
    @IBOutlet weak var tf2: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == tf1 {
            tf1.resignFirstResponder()
        }
        else {
            tf2.resignFirstResponder()
        }
        return true
    }
    
    @IBAction func buttun1(_ sender: UIButton) {
        
        let size = Double(tf2.text!)!
        let weight = Double(tf1.text!)!
        
        let bmi = weight / pow (size, 2) * 10000
        let bmiRounded = (round(bmi * 10) / 10)
        
        
        let le = "YOUR BMI IS = \(bmi)"
        
        label.text = le
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tf1.delegate = self
        tf2.delegate = self
        
    }
    
}


