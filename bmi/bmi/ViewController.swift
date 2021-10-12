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
    
    @IBAction func buttun1(_ sender: UIButton) {
        
        let size = Double(tf2.text!)!
        let weight = Double(tf1.text!)!
        
        let bmi = weight / pow(size, 2)
        let bmiRounded = (round(bmi * 10) / 10)
        
        
        let le = "YOUR BMI IS = \(bmiRounded)"
        
        label.text = le
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            tf2.resignFirstResponder()
            return true
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
}


