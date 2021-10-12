//
//  BMIViewController.swift
//  w3Day13
//
//  Created by ibrahim asiri on 06/03/1443 AH.
//

import UIKit

class BMIViewController: UIViewController {

    @IBOutlet weak var heightTF: UITextField!
    @IBOutlet weak var weightTF: UITextField!
    @IBOutlet weak var resultLb: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func caluculatBMI(_ sender: Any) {
        
        let hegt = Double(heightTF.text!)
        let weght = Double(weightTF.text!)
        var bmiC = BMIComput(height: hegt!, weight: weght!)
        
        resultLb.text = "\(bmiC.bmi())"
    }

        
    }
    
