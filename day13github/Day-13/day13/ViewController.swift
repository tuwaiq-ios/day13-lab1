//
//  ViewController.swift
//  day13
//
//  Created by Kholod Sultan on 07/03/1443 AH.
//

import UIKit
class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var tv: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        tv.delegate = self
    }
   
    
    @IBAction func buttenpress(_ sender: Any) {
        let name=tv.text
        performSegue(withIdentifier: "123", sender: name)
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        let tv =  segue.destination as! Neamshow
        tv.name = sender as? String
        
        
    }
}


class Neamshow : UIViewController{
    var name: String?
    
}

