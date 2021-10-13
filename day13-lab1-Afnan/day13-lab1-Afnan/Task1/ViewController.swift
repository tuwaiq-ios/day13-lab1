//
//  ViewController.swift
//  day13-lab1-Afnan
//
//  Created by Fno Khalid on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textfield.delegate = self
    }
    
    @IBAction func button(_ sender: Any) {
        let name = textfield.text!
        
        performSegue(withIdentifier: "show-name", sender: name )
       
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textfield .resignFirstResponder()
        
        return true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if segue.identifier != "show-name" {
            return
             }
           let callname = segue.destination as! screen2
           callname.name = sender as? String
        
        
}

}
class screen2: UIViewController {
    
    
    @IBOutlet weak var namelabel: UILabel!
    
    var name:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        namelabel.text = name
    }
}
