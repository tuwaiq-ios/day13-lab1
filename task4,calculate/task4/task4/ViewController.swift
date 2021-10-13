//
//  ViewController.swift
//  task4
//
//  Created by PC on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITextFieldDelegate {
    

    @IBOutlet weak var text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        text.delegate = self
        
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: Any){
        let p = text.text!
        performSegue(withIdentifier: "123", sender: p)
//        print("mnora")

    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        text.resignFirstResponder()
        return true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        let text = segue.destination as! label2
        text.name = sender as! String
    
    }
}


