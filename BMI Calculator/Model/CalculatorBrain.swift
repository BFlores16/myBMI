//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Brando Flores on 9/15/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
// colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)

import Foundation
import UIKit


struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0 )
        return bmiTo1DecimalPlace;
    }

    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = Float(weight / (height * height));
        
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Underweight", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Normal", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Overweight", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
    
    func getAdvice() -> String {
        return bmi!.advice;
    }
    
    func getColor() -> UIColor {
        return bmi!.color;
    }
    
}
