//
//  resultBMIViewController.swift
//  Day 13 Task 2 Atheer Alzahrani
//
//  Created by Eth Os on 06/03/1443 AH.
//

import UIKit

class ResultBMIViewController: UIViewController{
    var bmiResult: Float?
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "\(bmiResult!)"
    }
}
