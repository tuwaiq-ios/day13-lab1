//
//  View.swift
//  Task2 day 13
//
//  Created by Dr. Fahad on 06/03/1443 AH.
//

import UIKit

struct BMI {
    var height : Double
    var weight : Double

    func bmi() -> Double {
        return weight/(height*height) * 10000
    }
}
