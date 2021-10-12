//
//  ViewController.swift
//  Day13
//
//  Created by MacBook on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tf.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var tf: UITextField!
    
    @IBAction func press(_ sender: Any) {
        
        
        let name = tf.text!
    
        
        
        performSegue(withIdentifier: "show", sender: name)
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        tf.resignFirstResponder()
        
        return true
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
       super.prepare(for: segue, sender: sender)
       
        
       let name1 = segue.destination as! VC2
        name1.L2 = sender as? String

   }

    

}

