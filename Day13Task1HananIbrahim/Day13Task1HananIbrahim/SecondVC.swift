//
//  SecondVC.swift
//  Day13Task1HananIbrahim
//
//  Created by HANAN on 06/03/1443 AH.
//

import UIKit

class SecondVC : UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    var text : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if text != nil {
            label.text = text
        }
        
    }
    
}
