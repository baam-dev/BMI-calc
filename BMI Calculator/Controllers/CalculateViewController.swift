//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text =  "\(height) m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text =  "\(weight) Kg"
    }
    
    @IBAction func calcPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height, weight)
        // when making a new segue we should have 2 things present:
        // 1. identifier >> specified at the moment of creating the segue
        // 2. sender >> who is the initiator of the segue? 
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
            if segue.identifier == "goToResult" {
                // creat a reference to that new viewController that's going to be
                // initialized when the segue gets performed
                // You can reach that new viewController through >> .destination
            let destinationVC = segue.destination as! ResultViewController
                destinationVC.bmiVal = calculatorBrain.getBMIValue()
                destinationVC.advice = calculatorBrain.getAdvice()
                destinationVC.color = calculatorBrain.getColor()
                
        }
    }
}

