//
//  ViewController.swift
//  Task2 day 13
//
//  Created by Dr. Fahad on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var labelBMI: UILabel!
    @IBOutlet weak var weight: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func button(_ sender: Any) {
        let h = Double(height.text!)
        let w = Double(weight.text!)
        let bmiM = BMI(height:h! , weight:w!)
        labelBMI.text = "\(bmiM.bmi())"
    }

}

