//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Amir Bakhshi on 2021-08-19.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    var bmiVal : String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiVal
    }
    
    @IBAction func recalcPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
