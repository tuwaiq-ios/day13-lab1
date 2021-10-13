//
//  VC2.swift
//  Day13
//
//  Created by m.alqhtani on 13/10/2021.
//

import UIKit

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
        resultLable.text = String(bmiM.bmi())
        
    }
}

