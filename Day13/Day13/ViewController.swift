//
//  ViewController.swift
//  Day13
//
//  Created by Me .. on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate{

    @IBOutlet weak var TV: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        TV.delegate = self
    }
    @IBAction func buttonPressed(_ sender: Any) {
        let name = TV.text!
        performSegue(withIdentifier: "11", sender: name)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "11" {
            return
        }
         
        let show = segue.destination as! nameshow
        show.calledName = sender as? String
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        TV.resignFirstResponder()
        return true
    }
    
   

}



class nameshow: UIViewController{
    
    
    var calledName : String?
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = calledName
    }
}
