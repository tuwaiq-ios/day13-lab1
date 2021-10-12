//
//  ViewController.swift
//  day13
//
//  Created by Hassan Yahya on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var tf: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tf.delegate = self
    }
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
             tf.resignFirstResponder()
           
            return true
        
        }
    @IBAction func buttonpressed(_ sender: Any) {
  
        let name = tf.text!
    
         performSegue(withIdentifier:"show_name", sender: name)
    }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            super.prepare(for: segue, sender: sender)
            
            
            let HH = segue.destination as! VCN
            HH.nameFromVC1 = sender as! String
            
    }
}
class VCN: UIViewController {
    
    var nameFromVC1 = ""
    @IBOutlet weak var NL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NL.text = nameFromVC1
    }
}
