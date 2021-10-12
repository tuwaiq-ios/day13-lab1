//
//  View.swift
//  Task2 day 13
//
//  Created by Dr. Fahad on 06/03/1443 AH.
//

import UIKit

class BMI {
    var height : Double
    var weight : Double
    
    init (height:Double , weight:Double){
        self.height = height
        self.weight = weight
    }
    func bmi() -> Double {
        return weight/(height*height)
    }
}
