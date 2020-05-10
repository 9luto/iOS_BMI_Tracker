//
//  ViewController.swift
//  BMI Tracker
//
//  Created by Richard Peralta on 5/9/20.
//  Copyright © 2020 Richard Peralta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var weightInput: UITextField!
    @IBOutlet weak var heightInput: UITextField!
    @IBOutlet weak var BMIOutput: UITextField!
    @IBOutlet weak var categoryOutput: UILabel!
    @IBAction func calcBMI(_ sender: Any) {
        
        if let heightStr = heightInput.text{
            if heightStr == " "
            {
                return
            }
            else{
                if let weightStr = weightInput.text{
                    if weightStr == " "{
                        return
                    }
                    else{
                        if let heightNum = Double(heightStr){
                            if let weightNum = Double(weightStr){
                                let BMI: Double = (weightNum) / (heightNum * heightNum)
                                BMIOutput.text = String(BMI)

                                switch BMI {
                                case 1..<15:
                                    categoryOutput.text = "Very Severely Underweight"
                                case 15...16:
                                    categoryOutput.text = "Severely Underweight"
                                case 16..<18.5:
                                    categoryOutput.text = "Underweight"
                                case 18.5..<25:
                                    categoryOutput.text = "Normal"
                                case 25..<30:
                                    categoryOutput.text = "Overweight"
                                case 30..<35:
                                    categoryOutput.text = "Moderately Obese"
                                case 35..<40:
                                    categoryOutput.text = "Severely Obese"
                                case 40..<60:
                                    categoryOutput.text = "Very Severely Obese"
                                default:
                                    return
                                }
                                
                            }
                        }
                    }
                }
            }
        }
        
    }
}

