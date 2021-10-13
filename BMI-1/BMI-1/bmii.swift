//
//  bmii.swift
//  BMI-1
//
//  Created by Abdulaziz on 07/03/1443 AH.
//

import UIKit

class bmii {
    var hi: Double
    var wi: Double
    
    init(hi:Double,wi:Double){
        self.hi = hi
        self.wi = hi
    }
    
    func bmi()->Double {
        return wi/(hi*hi) * 1000
        
    }
    
}
