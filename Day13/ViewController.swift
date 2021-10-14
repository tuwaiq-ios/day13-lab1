//
//  ViewController.swift
//  Day13
//
//  Created by Tsnim Alqahtani on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var tf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tf.delegate = self
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        let name = tf.text!
        
        performSegue(withIdentifier: "123", sender: name)
        
    }
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            tf.resignFirstResponder()
            return true
        }

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            super.prepare(for: segue, sender: sender)
        
        let name1 = segue.destination as! label
            
        name1.L2 = sender as? String
    
    }
}
