//
//  VC1.swift
//  Day13
//
//  Created by Fawaz on 07/03/1443 AH.
//


import UIKit

class VC1 : UIViewController, UITextFieldDelegate {
  
  @IBOutlet weak var heightTF: UITextField!
  @IBOutlet weak var weightTF: UITextField!
  @IBOutlet weak var result: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    heightTF.delegate = self
    weightTF.delegate = self
  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    heightTF.resignFirstResponder()
    weightTF.resignFirstResponder()
    return true
  }
  @IBAction func calculate(_ sender: Any) {
    let h = Double (heightTF.text ?? "0") ?? 0
    let w = Double (weightTF.text ?? "0") ?? 0
    let BMi = BMI(height: h, weight:w)
    result.text = String (BMi.bmi())
  }
}
