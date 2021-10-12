//
//  BMIModel .swift
//  برنامج حساب كتلة الجسم
//
//  Created by sara al zhrani on 06/03/1443 AH.
//

import Foundation

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



