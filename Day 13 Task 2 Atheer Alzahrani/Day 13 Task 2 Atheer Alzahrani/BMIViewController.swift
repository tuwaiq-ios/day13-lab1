//
//  ViewController.swift
//  Day 13 Task 2 Atheer Alzahrani
//
//  Created by Eth Os on 06/03/1443 AH.
//

import UIKit

class BMIViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var weightTextLabel: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        weightTextLabel.delegate = self
        heightTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        weightTextLabel.resignFirstResponder()
        heightTextField.resignFirstResponder()
        return true
    }
    
    @IBAction func calculateBMIButton(_ sender: Any) {
        let weight: Float?  = Float(weightTextLabel.text!)
        let height: Float? = Float(heightTextField.text!)
        guard weight != nil && height != nil else{
            return
        }
        let bmi =  weight! / (height! * height!) * 10000
//        resultLabel.text = "\(bmi)"
        performSegue(withIdentifier: "bmi", sender: bmi)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "bmi" {
            return
        }
        let resultOB = segue.destination as! ResultBMIViewController
        resultOB.bmiResult = sender as? Float
    }
    
    @IBAction func resetButton(_ sender: Any) {
        weightTextLabel.text = ""
        heightTextField.text = ""
    }
}

