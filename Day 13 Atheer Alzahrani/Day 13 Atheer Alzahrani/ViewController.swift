//
//  ViewController.swift
//  Day 13 Atheer Alzahrani
//
//  Created by Eth Os on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameTextField.delegate = self
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTextField.resignFirstResponder()
        return true
    }
    
    @IBAction func riseButtonPressed(_ sender: Any) {
        let name = nameTextField.text!
        
        performSegue(withIdentifier: "segue", sender: name)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "segue" {
            return
        }
        let risedName = segue.destination as! NameViewController
        risedName.name = sender as? String
    }
}

