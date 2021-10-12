//
//  ViewController.swift
//  day13-2
//
//  Created by sally asiri on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var height: UITextField!
    
    @IBOutlet weak var labelBMI: UILabel!
    
    
    @IBOutlet weak var weight: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any) {
        let h = Double(height.text!)
        let w = Double(weight.text!)
        var bmiM = BMI(height:h! , weight:w!)
        labelBMI.text = String(bmiM.bmi())
        
    }
    
}

