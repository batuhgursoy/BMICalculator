//
//  ViewController.swift
//  CalculateBMI
//
//  Created by Batuhan Gürsoy on 23.10.2024.
//

import UIKit

class ViewController: UIViewController {

    
    var bmiResult = "0.0"
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    
    override func viewDidLoad() {
        

        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }

    @IBAction func sliderAction(_ sender: UISlider) {
        
        let weight = String(format: "%.1f", weightSlider.value)
        weightValue.text = String("\(weight)kg")
    }
    @IBAction func heightSliderAction(_ sender: Any) {
        let height = String(format: "%.2f", heightSlider.value)
        heightValue.text = String("\(height)cm")
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight / pow(height, 2)
        bmiResult = String(format: "%.2f", bmi)
        
        
        performSegue(withIdentifier: "toSecondPage", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondPage" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.bmiResult = bmiResult
        }
    }
    
}

