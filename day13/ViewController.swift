//
//  ViewController.swift
//  day13
//
//  Created by Dr. Fahad on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tf.delegate = self
    }
    
    @IBOutlet weak var tf: UITextField!
    
    @IBAction func button(_ sender: Any) {
        
        let myName = tf.text
    
         performSegue(withIdentifier: "123" , sender: myName)
        }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        tf.resignFirstResponder()
        return true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
     super.prepare(for: segue, sender: sender)
        
            let name1 = segue.destination as! labelname
            name1.L2 = sender as? String
        }
    }
   

    

