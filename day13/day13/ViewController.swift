//
//  ViewController.swift
//  day13
//
//  Created by sally asiri on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {
    
    @IBOutlet weak var tf: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tf.delegate = self
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        tf.resignFirstResponder()
        return true
    }
    
    
    @IBAction func buttonPressad(_ sender: Any) {
        
        let name = tf.text
        
        performSegue(withIdentifier: "show_name", sender: name)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        let SS = segue.destination as! VC
        SS.nameFromVC1 = sender as! String
        
        
        let name1 = segue.destination as! VC
        name1.nameFromVC1 = sender as! String
        
    }
    
    
    
}

class VC: UIViewController {
    var nameFromVC1 = ""
    
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = nameFromVC1
    }
}
