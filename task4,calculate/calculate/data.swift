//
//  data.swift
//  calculate
//
//  Created by PC on 07/03/1443 AH.
//

import UIKit


class BM {
    var hieght : Double
    var wieght : Double
    init(hieght:Double, wieght : Double){
        self.hieght = hieght
        self.wieght = wieght
    }
    func bmi() -> Double{
        return wieght/(hieght*hieght)
    }
    
}
