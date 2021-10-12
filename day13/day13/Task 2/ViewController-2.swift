//
//  ViewController-2.swift
//  day13
//
//  Created by  HANAN ASIRI on 06/03/1443 AH.
//

import UIKit

class Vi : UIViewController {

    @IBOutlet var HtextField: UITextField!
    
    @IBOutlet var WtextField: UITextField!
    
    
    @IBOutlet var resultlable: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func computeBMI(_ sender: Any) {
        let h = Double (HtextField.text!)
        let w = Double (WtextField.text!)
        var bmiM = BMIModel(heigh: h!, weight: w!)
        resultlable.text = String(bmiM.bmi())
    }
}
    

