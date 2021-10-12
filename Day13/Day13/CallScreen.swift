//
//  CallScreen.swift
//  Day13
//
//  Created by Fawaz on 06/03/1443 AH.
//

import Foundation
import UIKit

class CallScreen: UIViewController, UITextFieldDelegate {
  
  @IBOutlet weak var textField: UITextField!
  
  @IBAction func button(_ sender: Any) {
    
    let name = textField.text ?? ""
    performSegue(withIdentifier: "show", sender: name)
    
  }
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
  }
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    super.prepare(for: segue, sender: sender)
    
    let ff = segue.destination as! NameScreen
    ff.nameLable2 = sender as! String
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    textField.delegate = self
  }
}
//---------------------------------------------------------------------

class NameScreen: UIViewController {
  
  @IBOutlet weak var nameLabel: UILabel!
  
  var nameLable2: String = ""
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    nameLabel.text = nameLable2
  }
}
