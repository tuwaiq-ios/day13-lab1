//
//  VC2.swift
//  day13airport.
//
//  Created by sara al zhrani on 06/03/1443 AH.
//

import UIKit
class VC2 : UIViewController {
    
    
    
    class VC2 : UIViewController, UITextFieldDelegate
    {
        @IBOutlet weak var htf: UITextField!
        @IBOutlet weak var wetf: UITextField!
        @IBOutlet weak var resultLable: UILabel!
        override func viewDidLoad() {
            super.viewDidLoad()
        }
        @IBAction func computerBMI(_ sender: Any) {
            let h = Double (htf.text!)
            let w = Double (wetf.text!)
            var bmiM = BMIModel(height: h!, weight:w!)
            resultLable.text = String (bmiM.bmi())
        }
    }
    
    
    
    
    
    
    
    
}
