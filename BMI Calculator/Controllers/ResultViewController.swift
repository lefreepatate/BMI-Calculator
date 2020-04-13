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
    @IBOutlet weak var resultColor: UIImageView!
    
    var advice: String?
    var label: String?
    var color: UIColor?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = label
        adviceLabel.text = advice
        resultColor.backgroundColor = color
        
    }
    @IBAction func reCalculatePress(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
