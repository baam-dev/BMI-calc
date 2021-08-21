//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Amir Bakhshi on 2021-08-19.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiVal: String?
    var advice: String?
    var color: UIColor?
    
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiVal
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalcPressed(_ sender: UIButton) {
        // simply dismiss the current viewController
        dismiss(animated: true, completion: nil)
    }
    
}
