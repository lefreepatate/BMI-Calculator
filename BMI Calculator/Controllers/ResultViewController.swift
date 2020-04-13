//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Carlos Garcia-Muskat on 13/04/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
    }
    @IBAction func reCalculatePress(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
