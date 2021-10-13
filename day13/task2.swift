//
//  task2.swift
//  day13
//
//  Created by Maram Al shahrani on 06/03/1443 AH.
//

import UIKit


class viewController: UIViewController{
    

   
    @IBOutlet weak var height: UITextField!
    
    @IBOutlet weak var weight: UITextField!
    

    @IBOutlet weak var labelBMI: UILabel!
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func button(_ sender: Any) {
        
        let h = Double(height.text!)
        let w = Double(weight.text!)
        var bmim = BMI(height:h!,weight:w!)
        labelBMI.text = String(bmim.bmi())
    
    }
    

    
}


class BMI {
    
    var height : Double
    var weight : Double
    
    
    init(height:Double , weight:Double){
        
        self.height = height
        self.weight = weight
        
    }
    
    
    func bmi() -> Double {
        
       return weight/(height*height)*1000
    }
    
    
    
}
