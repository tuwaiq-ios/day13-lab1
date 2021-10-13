//
//  ViewController.swift
//  day13
//
//  Created by Maram Al shahrani on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    
    @IBOutlet weak var tv: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tv.delegate = self
    }

    @IBAction func buttenPress(_ sender: Any) {
        
        let name = tv.text
    
        performSegue(withIdentifier: "123", sender: name )
    }
  
  
    func textFieldShouldReturn(_ UITextField: UITextField) -> Bool{
        tv.resignFirstResponder()
        return true
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
      
        let tv = segue.destination as! Neamshow
        tv.name = sender as? String
    }
    
    
    
}

class Neamshow:UIViewController {
    
    var name: String?
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        nameLabel.text = name
    }
}

