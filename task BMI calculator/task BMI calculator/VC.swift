//
//  VC.swift
//  task BMI calculator
//
//  Created by MacBook on 07/03/1443 AH.
//

import UIKit
class VC : UIViewController, UITextFieldDelegate{
   
    
    @IBOutlet weak var htf: UITextField!
    @IBOutlet weak var wetf: UITextField!
    @IBOutlet weak var resultlabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func button(_ sender: Any) {
    
        let h = Double (htf.text!)
        let w = Double (wetf.text!)
        let bmiM = BMIModel(height: h!, weight:w!)
        resultlabel.text = String (bmiM.bmi())
        
    }
}


