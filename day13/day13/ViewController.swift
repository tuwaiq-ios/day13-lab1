//
//  ViewController.swift
//  day13
//
//  Created by  HANAN ASIRI on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textfield.delegate = self
        
    }
    
    @IBAction func button(_ sender: Any) {
        let name = textfield.text!
        
        performSegue(withIdentifier: "show-name", sender: name)
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textfield.resignFirstResponder()
     return true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
       
        if segue.identifier != "show-name" {
              return
               }
              let callname = segue.destination as! cv
              callname.name = sender as? String
    
         }
         }
 
class cv : UIViewController {
    
    @IBOutlet var lable2: UILabel!
    
    var name:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lable2.text = name
      }
      }
