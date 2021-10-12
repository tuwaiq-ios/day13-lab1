//
//  ViewController.swift
//  day13 task2
//
//  Created by Ahmed Assiri on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var weightText: UITextField!
    
    @IBOutlet weak var labA: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //
    }

    @IBAction func comBMI(_ sender: Any) {
        let h = Double(height.text!)
        
        let w = Double(weightText.text!)
        let bmi1 = BMI(height: h!, weight: w!)
        labA.text =  String( bmi1.bmi())
    }
}

