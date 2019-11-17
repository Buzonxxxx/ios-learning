//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by 廖政豪 on 2019/11/5.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var billPerPerson = "0.0"
    var tip = 10
    var splitNumber = 2
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = billPerPerson
        settingsLabel.text = "Split between \(splitNumber) people, with \(tip)% tip."
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
