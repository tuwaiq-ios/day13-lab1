//
//  ViewController.swift
//  w3Day13
//
//  Created by ibrahim asiri on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
    }

    @IBAction func buttPressed(_ sender: Any) {
        
        let name = textField.text!
        performSegue(withIdentifier: "send", sender: name)
        
    }
    //To view keybored
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
    
        if let textView = segue.destination as? ViewText {
    
            textView.text  = sender as! String
    
    }}
    
}

