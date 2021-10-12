//
//  Data.swift
//  BMI
//
//  Created by MacBook on 06/03/1443 AH.
//

import UIKit
class Data {
    
    var height: Double
    var weight: Double
    
    init(height: Double, weight: Double){
        
        self.height = height
        self.weight = weight

    }
    
    func bmi() -> Double{
        
        return weight/(height*height)
    }
    
    
}
