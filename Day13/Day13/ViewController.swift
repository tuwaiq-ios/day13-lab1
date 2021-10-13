//
//  ViewController.swift
//  Day13
//
//  Created by Sara M on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var Tf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Tf.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        Tf.resignFirstResponder()
        return true
}

    @IBAction func buttonprees(_ sender: Any) {
        let name = Tf.text!
        print("Hello")
        performSegue(withIdentifier: "098",
                    sender: name )
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        let cell = segue.destination as! VC2
        cell.nameFromVC1 = sender as! String
    }
    }

class VC2: UIViewController{
    var nameFromVC1 = ""
    
    @IBOutlet weak var label2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label2.text = nameFromVC1
    }
    
}

