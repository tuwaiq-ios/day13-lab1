//
//  ViewText.swift
//  w3Day13
//
//  Created by ibrahim asiri on 06/03/1443 AH.
//

import UIKit

class ViewText: UIViewController {
    var text = ""

    @IBOutlet weak var textLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLbl.text = text

         }
    
}
