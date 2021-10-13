//
//  BMIviewcontroller.swift
//  day 13
//
//  Created by alanood on 06/03/1443 AH.
//

import UIKit

class BMIviewcontroller: UIViewController , UITextFieldDelegate {
    
    @IBOutlet weak var heighttextfield: UITextField!
    
    @IBOutlet weak var weighttextfield: UITextField!
    @IBOutlet weak var resultlable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func computerBMI(_ sender: Any) {
        let h = Double(heighttextfield.text ?? "0") ?? 0
        let w = Double(weighttextfield.text ?? "0") ?? 0

        let bmiM = BMImodel(height: h, weight: w)
        resultlable.text = "\(bmiM.bmi())"
    }
    
}


