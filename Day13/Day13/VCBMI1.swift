//
//  VCBMI1.swift
//  Day13
//
//  Created by Sara M on 07/03/1443 AH.
//

import UIKit

class VCBMI1 {
    var height : Double
    var weight : Double
    
    init (height:Double, weight:Double){
        self.height = height
        self.weight = weight
}
    func bmi() -> Double {
        return weight/(height*height)*10000
        }
    }
