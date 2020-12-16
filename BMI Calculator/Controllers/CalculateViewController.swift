//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var height:Float = 0.0;
    var weight:Float = 0.0;
    var calculatorBrain = CalculatorBrain();
    
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightValueLabel.text = String(format: "%.2f", sender.value) + "m";
        height = Float(sender.value);
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightValueLabel.text = String(format: "%.2f", sender.value) + "kg";
        weight = Float(sender.value);
    }
    
    //Instead of ctrl drag button to another view controller, you can use this code in addition to perform code. You still have to crl drag from the view controller icon to the other view controller
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        calculatorBrain.calculateBMI(height: height, weight: weight);
        self.performSegue(withIdentifier: "toDisplayView", sender: self);
    }
    
    
    // Go to DisplayViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDisplayView" {
            let destination = segue.destination as! DisplayController;
            destination.bmiValue = calculatorBrain.getBMIValue();
            destination.advice = calculatorBrain.getAdvice();
            destination.color = calculatorBrain.getColor();
        }
    }
    
    /*// Unwind back to the calculator
    @IBAction func unwindToCalculator(segue: UIStoryboardSegue) {
    }*/

}

