//
//  ViewController.swift
//  loancalc
//  Assignment Module 4
//  Created by Matthew Anderson on 10/29/22.
//

import UIKit
import Foundation

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var lblMonthly: UILabel!
    @IBOutlet weak var lblMortPrincipal: UILabel!
    @IBOutlet weak var lblLoanMonths: UILabel!
    @IBOutlet weak var lblInterestPerc: UILabel!
    @IBOutlet weak var lblChoose: UILabel!
    @IBOutlet weak var textFieldPrincipal: UITextField!
    @IBOutlet weak var textFieldLoanMonths: UITextField!
    @IBOutlet weak var textFieldInterestRate: UITextField!
    @IBOutlet weak var textFieldChoose: UITextField!
    @IBOutlet weak var textFieldPayment: UITextField!
    @IBOutlet weak var results: UILabel!
    
    override func viewDidLoad() {
        textFieldChoose.delegate = self
        textFieldPrincipal.delegate = self
        textFieldInterestRate.delegate = self
    }
    
    func textFieldReturn(_ textField: UITextField) -> Bool {
        self.resignFirstResponder()
        return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    @IBAction func calculatebutton(_ sender: Any) {
        let principalText = Float(textFieldPrincipal.text!)!
        let interestText = Float(textFieldInterestRate.text!)!
        let monthsText = Int(textFieldLoanMonths.text!)!
        let chooseText = Character(textFieldChoose.text!)
        let monthConvert: Double = Double(monthsText)
        let interestConvert: Double = Double(interestText)
        let princConvert: Double = Double(principalText)
        let paymentAmt = solutionFormulaAnnual(monthConvert, interestConvert, princConvert)
        
        textFieldPayment.text = paymentAmt
        
        //Function to choose for Monthly or Annual
        
        func solutionFormulaAnnual(_ term:Double,_ rate:Double,_ princ:Double)->String {
            var solution = 0.000000000
            if chooseText == "A" {
                //Annual compounding formula
                solution = (rate / 100 * princ)/(1.0000000 - pow((1 + (rate / 100)),(-1 * term)))
            }
            if chooseText == "a" {
                //Annual compounding formula
                solution = (rate / 100 * princ)/(1.0000000 - pow((1 + (rate / 100)),(-1 * term)))
            }
            if chooseText == "M" {
                //Monthly compounding formula
                solution = (rate / 100 / 12 * princ)/(1.00000000 - pow((1 + (rate / 100 / 12)),(-1 * term)))
            }
            if chooseText == "m" {
                //Monthly compounding formula
                solution = (rate / 100 / 12 * princ)/(1.00000000 - pow((1 + (rate / 100 / 12)),(-1 * term)))
            }
            return "\(round(100 * solution)/100)"
        }
        
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
}



