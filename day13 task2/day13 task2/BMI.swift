//
//  BMI.swift
//  day13 task2
//
//  Created by Ahmed Assiri on 06/03/1443 AH.
//

import Foundation


class BMI {
    
    var heitght : Double
    var weight : Double
    
    init (height:Double,weight:Double){
        self.heitght = height
        self.weight = weight
    }
    
    func bmi()->Double {
        
        return weight/(heitght*heitght) * 10000
    }
}



