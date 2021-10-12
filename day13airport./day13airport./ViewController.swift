//
//  ViewController.swift
//  day13airport.
//
//  Created by sara al zhrani on 06/03/1443 AH.
//

import UIKit

class ViewController : UIViewController, UITextFieldDelegate {
    
        
    @IBOutlet weak var tf: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func bt(_ sender: Any) {
        let name = tf.text
        
        performSegue(withIdentifier: "sendname", sender:name)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        tf.resignFirstResponder()
        return true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "sendname" {
            return
        }
        let callname = segue.destination as! ShowName
        callname.name = sender as? String
        
    }
    
}

