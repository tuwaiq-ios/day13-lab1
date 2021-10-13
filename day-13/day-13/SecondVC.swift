//
//  SecondVC.swift
//  day-13
//
//  Created by Abdulaziz on 07/03/1443 AH.
//

import UIKit

class secondVc: UIViewController{
    
    @IBOutlet weak var NameSecreen: UILabel!
    
    var NS: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NameSecreen.text = NS
    }
    
}
