//
//  ViewController.swift
//  BMI-1
//
//  Created by Abdulaziz on 07/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weightt: UITextField!
    
    @IBOutlet weak var heightt: UITextField!
    
    @IBOutlet weak var lebl: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func yourBMI(_ sender: Any) {
        let a = Double(heightt.text!)
        let b = Double(weightt.text!)
        let b1 = bmii(hi: a!, wi: b!)
        lebl.text = String(b1.bmi())
                
    }
    
}
    


