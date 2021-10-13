//
//  ViewController.swift
//  TextField
//
//  Created by MacBook on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var TextF: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        TextF.delegate = self
    }
    
    
    
    @IBAction func bottonTV(_ sender: Any) {
        
        let name = TextF.text ?? ""
        print("TextF.text")
        
        performSegue(withIdentifier: "turn", sender: name)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        let tx = segue.destination as! keyboard
        tx.tex = sender as? String
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        TextF.resignFirstResponder()
        return true
    }
}


