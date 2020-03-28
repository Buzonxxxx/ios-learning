//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by 廖政豪 on 2019/11/4.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var BMIValue : String?
    var color: UIColor?
    var advice: String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = BMIValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func caculatorPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
