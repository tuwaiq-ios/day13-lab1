//
//  bmi.swift
//  day13
//
//  Created by Hassan Yahya on 06/03/1443 AH.
//

import UIKit

class VC2 : UIViewController, UITextFieldDelegate
{
   
    
    @IBOutlet weak var htf: UITextField!
    @IBOutlet weak var WText: UITextField!
    
    @IBOutlet weak var Lresult: UILabel!
        
      override func viewDidLoad() {
        super.viewDidLoad()
          htf.delegate = self
          WText.delegate = self
      }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
         htf.resignFirstResponder()
       
        return true
    }
    @IBAction func computerBMI (sender:Any)
    {
        let h = Double (htf.text!)
        let w = Double (WText.text!)
        let BMi = BMIModel(height: h!, weight:w!)
            Lresult.text = String (BMi.bmi())
        
    }
}



