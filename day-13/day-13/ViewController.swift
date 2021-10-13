//
//  ViewController.swift
//  day-13
//
//  Created by Abdulaziz on 07/03/1443 AH.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var textF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textF.delegate = self
        // Do any additional setup after loading the view.
    }
    @IBAction func button(_ sender: Any) {
        let Nem = textF.text ?? ""
        performSegue(withIdentifier: "push", sender: Nem)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let Nem = segue.destination as! secondVc
        Nem.NS = sender as! String
    }
}

