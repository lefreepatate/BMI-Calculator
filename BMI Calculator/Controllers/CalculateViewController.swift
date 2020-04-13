//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    // MARK: IBOUTLETS
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var bmi: Float?
    // MARK: IBACTIONS
    @IBAction func heightSliderChange(_ sender: UISlider) {
        heightLabel.text = String(format:"%.2f", sender.value) + "m"
    }
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weightLabel.text = "\(Int(sender.value))Kg"
    }
    @IBAction func calculateButton(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        bmi = weight / (height * height)
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = String(format: "%.1F", bmi!)
        }
    }
    

    
}

