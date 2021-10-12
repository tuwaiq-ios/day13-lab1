//
//  Label.swift
//  day13
//
//  Created by Dr. Fahad on 06/03/1443 AH.
//

import UIKit

class labelname : UIViewController  {
    
    
  var L2 : String?
    
    @IBOutlet weak var labelName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = L2
    }
}
