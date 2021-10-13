//
//  keyboard.swift
//  TextField
//
//  Created by MacBook on 06/03/1443 AH.
//

import UIKit

class keyboard : UIViewController {
    
    
    @IBOutlet weak var labeltext: UILabel!
    
    var tex : String?
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        labeltext.text = tex
        
    }
}
