//
//  BMIComput.swift
//  w3Day13
//
//  Created by ibrahim asiri on 06/03/1443 AH.
//

import Foundation
import UIKit

class BMIComput {
    var height : Double
    var weight : Double
    
    init(height: Double, weight: Double){
        self.height = height
        self.weight = weight
    }
    
    func bmi() -> Double {
        return weight/(height * height)
    }
}


