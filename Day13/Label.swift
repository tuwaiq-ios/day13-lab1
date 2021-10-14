//
//  Label.swift
//  Day13
//
//  Created by Tsnim Alqahtani on 06/03/1443 AH.
//

import UIKit

class label: UIViewController{
    
    var L2 : String?
    
    
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = L2
    }
}
