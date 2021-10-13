//
//  ViewController.swift
//  calculate
//
//  Created by PC on 06/03/1443 AH.
//

import UIKit

class viewController: UIViewController{
    
    @IBOutlet weak var wieghtT: UITextField!
    @IBOutlet weak var hieghtT: UITextField!
    @IBOutlet weak var resultLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
    @IBAction func goBtn(_ sender: Any) {
        
        let h = Double(hieghtT.text!)
        let w = Double(wieghtT.text!)
        var bmiC = BM(hieght: h!, wieght: w!)
        resultLbl.text = "\(bmiC.bmi())"
    }
}
     
        
        
        
    





