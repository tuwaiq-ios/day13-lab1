//
//  BMIModel.swift
//  Day13
//
//  Created by m.alqhtani on 13/10/2021.
//

import UIKit

class BMIModel {
    var height : Double
    var weight : Double
    
    init (height:Double, weight:Double){
        self.height = height
        self.weight = weight
    }
    func bmi() -> Double {
        return weight/(height*height)
    }
}
