//
//  BMIclass.swift
//  day13-lab1-Afnan
//
//  Created by Fno Khalid on 06/03/1443 AH.
//

import Foundation

class BMI {

    var height: Double
    var weight: Double
    
    init (height:Double, weight:Double) {
        self.height = height
        self.weight = weight
    }
    
    func bmi () ->Double {
        return weight/(height*height)
    }
}
