//
//  ViewController.swift
//  برنامج حساب كتلة الجسم
//
//  Created by sara al zhrani on 06/03/1443 AH.
//

import UIKit

class VC2 : UIViewController,UITextFieldDelegate {
    
    
    
    
    
    
    @IBOutlet weak var wet: UITextField!
    
    @IBOutlet weak var htf: UITextField!
    
    @IBOutlet weak var resultLable: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wet.delegate = self
        htf.delegate = self 
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    
    @IBAction func computeBMI(_ sender: Any) {
        
        let h = Double (htf.text!)
            let w = Double (wet.text!)
            var bmiM = BMIModel(height:h!,weight:w!)
            resultLable.text = String (bmiM.bmi())
        
        
    }
    

}

