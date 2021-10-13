//
//  ViewController.swift
//  day 13
//
//  Created by alanood on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController ,UITextFieldDelegate {
    
    
    
    @IBAction func button(_ sender: Any) {
        let name = tf.text!
        
        performSegue(withIdentifier: "123", sender: name)
    }
    @IBOutlet weak var tf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tf.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "123"{
            return
        }
        let newName = segue.destination as! lable
        newName.name = sender as? String
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        tf.resignFirstResponder()
        return true
    }
}



class lable : UIViewController {
    var name: String?
    @IBOutlet weak var nameLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLable.text = name
    }
    
}
