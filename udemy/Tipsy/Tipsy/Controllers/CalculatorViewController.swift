import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip = 0.10
    var splitNumber = 2
    var billTotal = 0.0
    var billPerPerson = "0.0"
    
    @IBAction func tipChanged(_ sender: UIButton) {
        let butttonTitle = sender.currentTitle!
        let tipPct = String(butttonTitle.dropLast())
        if tipPct == "0" {
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
        } else if tipPct == "10" {
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
        } else {
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
        }
        billTextField.endEditing(true)
        let buttonTitleAsANumber = Double(tipPct)!
        tip = buttonTitleAsANumber / 100
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper){
        splitNumberLabel.text = String(format: "%0.f", sender.value)
        splitNumber = Int(sender.value)
        billTextField.endEditing(true)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = billTextField.text!
        if bill != "" {
            billTotal = Double(bill)!
            billPerPerson = String(billTotal * ( 1 + tip) / Double(splitNumber))
        }
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.billPerPerson = billPerPerson
            destinationVC.tip = Int(tip * 100)
            destinationVC.splitNumber = splitNumber
        }
    }
}

