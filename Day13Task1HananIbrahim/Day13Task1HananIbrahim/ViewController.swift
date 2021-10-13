//
//  ViewController.swift
//  Day13Task1HananIbrahim
//
//  Created by HANAN on 06/03/1443 AH.
//


//Task 1 day 13 :

import UIKit

class ViewController: UIViewController {
    
        override func viewDidLoad() {
            super.viewDidLoad()
        }

        @IBOutlet weak var textField: UITextField!
        
        
        @IBAction func buttonPressed(_ sender: Any) {
            
            let controller = storyboard?.instantiateViewController(withIdentifier: "SecondVc") as! SecondVC
            
            controller.text = textField.text
            controller.modalPresentationStyle = .fullScreen
            
            present(controller, animated: true, completion: nil )
        }
    }

