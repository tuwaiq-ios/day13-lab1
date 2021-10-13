//
//  Task2.swift
//  Day13
//
//  Created by Me .. on 07/03/1443 AH.
//

import UIKit

class viewcontroller : UIViewController, UITextFieldDelegate {
    
    class BMI {
        var height : Double
        var weight : Double
        
        init (height:Double , weight:Double){
            self.height = height
            self.weight = weight
        }
        func bmi() -> Double {
            return weight/(height*height)*1000
        }
        
    }
    
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var labelBMI: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        height.delegate = self
        weight.delegate = self
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func button(_ sender: Any)  {
    let h = Double(height.text!)
    let w = Double(weight.text!)
    let bmim = BMI(height:h!,weight:w!)
    labelBMI.text = String(bmim.bmi())
    }
}

