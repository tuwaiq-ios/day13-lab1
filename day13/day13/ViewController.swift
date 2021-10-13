//
//  ViewController.swift
//  day13
//
//  Created by Macbook on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {
    
    @IBOutlet weak var textfild: UITextField!
    @IBAction func buttun(_ sender: Any) {
        
        let name = textfild.text
        
        self.performSegue(withIdentifier: "12", sender: name)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        let v2 = segue.destination as! VC2
        v2.le = sender as! String
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textfild.resignFirstResponder()
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        textfild.delegate = self
        
        // Do any additional setup after loading the view.
    }
}

