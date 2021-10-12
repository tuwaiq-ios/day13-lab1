//
//  ViewController.swift
//  Day13
//
//  Created by dmdm on 12/10/2021.
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
    @IBAction func pressed(_ sender: Any) {
    
        let name = tf.text!
        
        performSegue(withIdentifier: "show_name", sender: name)
  
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)

        let DD  = segue.destination as! VCN
        DD.nameFromVC1 = sender as! String
}
}

class VCN : UIViewController {
    var nameFromVC1 = ""
    

    @IBOutlet weak var nameLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLable.text = nameFromVC1
    }
}
