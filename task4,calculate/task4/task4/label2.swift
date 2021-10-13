//
//  label2.swift
//  task4
//
//  Created by PC on 06/03/1443 AH.
//

import UIKit
class label2: UIViewController{
    var name = ""
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label2.text = name
    }
}
