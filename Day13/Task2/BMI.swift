//
//  BMI.swift
//  Day13
//
//  Created by Fawaz on 07/03/1443 AH.
//


import UIKit

class BMI {
  var height : Double
  var weight : Double
  
  init (height:Double, weight:Double){
    self.height = height
    self.weight = weight
  }
  func bmi() -> Double {
    return weight/(height*height*10000)
  }
}
