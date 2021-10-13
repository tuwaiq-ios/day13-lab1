//
//  VCclass.swift
//  day13-lab1-Afnan
//
//  Created by Fno Khalid on 06/03/1443 AH.
//

import UIKit


class viewController: UIViewController {
    
    @IBOutlet weak var BMIimage: UIImageView!
    
    @IBOutlet weak var height: UILabel!
    
    @IBOutlet weak var weight: UILabel!
    
    @IBOutlet weak var textfield1: UITextField!
    
    @IBOutlet weak var textfield2: UITextField!
    
    @IBOutlet weak var calculatelabel: UILabel!
    
    @IBOutlet weak var bmilabel: UILabel!
    
    @IBOutlet weak var resultlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BMIimage.image = UIImage(named: "BMI-image")
        return
    }
    
    
    
    @IBAction func butoon(_ sender: Any) {
        
        let h = Double(textfield1.text!)
        let w = Double(textfield2.text!)
        
        
        let bmi = BMI(height: h!, weight: w!)
        
        resultlabel.text = String(bmi.bmi())
       
        
        
        
    }
    
    
}
