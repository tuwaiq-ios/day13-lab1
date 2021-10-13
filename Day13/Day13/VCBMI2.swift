//
//  VCBMI2.swift
//  Day13
//
//  Created by Sara M on 07/03/1443 AH.
//

import UIKit
class VCBMI2 : UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var Htf: UITextField!
    @IBOutlet weak var Wetf: UITextField!
    @IBOutlet weak var result: UILabel!
    
   
    override func viewDidLoad() {
       super.viewDidLoad()
       Htf.delegate = self
        Wetf.delegate = self
   }
   
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
             Htf.resignFirstResponder()
           
            return true
        }
   
    
    @IBAction func computerbmi(_ sender: Any) {
        let h = Double (Htf.text!)
        let w = Double (Wetf.text!)
        var bmiM = VCBMI1(height: h!, weight:w!)
        result.text = String (bmiM.bmi())
        
    }
}
