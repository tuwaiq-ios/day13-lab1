//
//  NameViewController.swift
//  Day 13 Atheer Alzahrani
//
//  Created by Eth Os on 06/03/1443 AH.
//

import UIKit

class NameViewController: UIViewController{
    
    @IBOutlet weak var nameLabel: UILabel!
   
    var name : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
    }
}
