//
//  VC2.swift
//  Day13
//
//  Created by Tsnim Alqahtani on 06/03/1443 AH.
//

import UIKit

class VC2: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var htf: UITextField!
    
    @IBOutlet weak var wetf: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func computerBMI(_ sender: AnyObject) {
        
        let h = Double (htf.text ?? "0") ?? 0
        let w = Double (wetf.text ?? "0") ?? 0
        let bmiM = BMIModel(height:h, weight:w)
        resultLabel.text = String (bmiM.bmi())
    }
}
