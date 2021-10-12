//
//  ShowName.swift
//  day13airport.
//
//  Created by sara al zhrani on 06/03/1443 AH.
//

import UIKit

class ShowName :ViewController{
    
    var name:String?
    
    
    @IBOutlet weak var nameLable: UILabel!
    
    
     override func viewDidLoad() {
        super.viewDidLoad()
        nameLable.text = name
    }
    
}
