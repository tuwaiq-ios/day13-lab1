//
//  ViewController.swift
//  BMI
//
//  Created by MacBook on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var heightTF: UITextField!
    
    @IBOutlet weak var weightTF: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculate(_ sender: Any) {
        
        let h = Double(heightTF.text!)
        
        let w = Double(weightTF.text!)
        
        var BMI = Data(height: h!, weight: w!)
        result.text = String(BMI.bmi())
    }
    
    


}

