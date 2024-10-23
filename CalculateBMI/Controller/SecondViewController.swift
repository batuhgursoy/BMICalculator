//
//  SecondViewController.swift
//  CalculateBMI
//
//  Created by Batuhan Gürsoy on 23.10.2024.
//

import UIKit

class SecondViewController: UIViewController {

    var bmiResult : String?
    @IBOutlet weak var bmiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bmiLabel.text = "YOUR BMI SCORE IS : \(bmiResult!)"
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    

}
