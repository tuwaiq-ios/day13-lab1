//
//  BMI.swift
//  day 13
//
//  Created by alanood on 06/03/1443 AH.
//

import Foundation

class BMImodel {
   
    var height: Double 
    var weight : Double
    
    init (height:Double,weight:Double){
       self.height=height
       self.weight=weight
    }
    func bmi()->Double {
        return weight/(height*height)
    }
    
}
