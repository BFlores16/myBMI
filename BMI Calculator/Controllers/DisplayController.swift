//
//  DisplayController.swift
//  BMI Calculator
//
//  Created by Brando Flores on 9/15/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class DisplayController: UIViewController {
    var bmiValue:String?;
    var advice:String?
    var color:UIColor?
    @IBOutlet weak var bmiDisplay: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backgroundColor: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayBMI();
        // Do any additional setup after loading the view.
    }
    
    func displayBMI() {
        bmiDisplay.text = bmiValue;
        adviceLabel.text = advice;
        backgroundColor.backgroundColor = color;
    }
    
    
    // You can unwind segue this way instead of creating an unwind section
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil);
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
