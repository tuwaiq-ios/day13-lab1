//
//  ViewController.swift
//  day13
//
//  Created by Ahmed Assiri on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var field: UITextField!
    
     

    @IBAction func buttonPressed(_ sender: Any) {
        let Ahmed = field.text!
        
        performSegue(withIdentifier: "123", sender: Ahmed)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        let Ah = segue.destination as? Cell
        
        Ah?.AA = sender as? UILabel
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        field.resignFirstResponder()
        return true
    }
    

    @IBAction func buttonTapped(){}
  //  field.resignFirstResponder()
//
 
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    //field.autocapitalizationType = .words
    // field.autocorrectionType = .no
    //  field.becomeFirstResponder()
        // Do any additional setup after loading the view.
        
        field.delegate = self
    }
   
}
///
///
///

class Cell: UIViewController {
    


    @IBOutlet weak var AA: UILabel!
    
    var cell1 = ""
        override func viewDidLoad() {
        super.viewDidLoad()
            AA.text = cell1
    }
    
}









