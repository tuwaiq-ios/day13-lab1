//
//  ViewController.swift
//  day13Task2HananIbra
//
//  Created by HANAN on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var labelBMI: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func thebutton(_ sender: Any) {
        let hei = Double(height.text!)
        let wei = Double(weight.text!)
        var bmi = BMI(height: hei!, weight: wei!)
        labelBMI.text = String(bmi.bmi())
    }
}

