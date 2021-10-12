//
//  BMIModel.swift
//  day13
//
//  Created by  HANAN ASIRI on 06/03/1443 AH.
//

import UIKit

class BMIModel{
    
    var heigh : Double
    var weight : Double
    
    init (heigh : Double , weight : Double ) {
        
        self.heigh = heigh
        self.weight = weight
    }
    func bmi () -> Double {
        return weight/(heigh*heigh)
    }

}
