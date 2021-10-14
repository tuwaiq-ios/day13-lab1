//
//  ViewController.swift
//  IBM
//
//  Created by Kholod Sultan on 07/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var height: UITextField!
    
    
    @IBOutlet weak var weight: UITextField!
    
    
    @IBOutlet weak var labelIBM: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func button(_ sender: Any) {
    
    let h = Double(height.text!)
    let w = Double(weight.text!)
        let bmiM = BMI(height:h! ,weight:w!)
        labelIBM.text = String(bmiM.bmi())
    

                                        }
                                        



class BMI {
    
var height :Double
var weight:Double


init (height:Double, weight:Double){
    self.height = height
    self.weight = weight
}
    func bmi() ->Double {
        return weight/(height*height)*10000
    }
}

}


