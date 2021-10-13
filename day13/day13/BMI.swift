//
//  BMI.swift
//  day13
//
//  Created by SARA SAUD on 3/6/1443 AH.
//TASK2

import UIKit
class BMI{
    var height:Double
    var weight:Double
    
    init (height:Double,weight:Double){
        self.height=height
        self.weight=weight
    }
        func bmi()->Double {
        return weight/(height*height)*10000
    }
}
class BmiLink:UIViewController{
    @IBOutlet weak var hTF: UITextField!
    
    @IBOutlet weak var wTF: UITextField!
    
    @IBOutlet weak var resultL: UILabel!

    @IBAction func calculateBMI(_ sender: Any) {
        let h = Double(hTF.text!)
        let w = Double(wTF.text!)
        let bmiM = BMI(height: h!, weight: w!)
        resultL.text=String(bmiM.bmi())
    }
}

