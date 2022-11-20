//
//  ModalViewController.swift
//  Module6
//
//  Created by Matthew Anderson on 11/14/22.
//

import UIKit
import Foundation

struct DecisionBit {
    static var bit = 0
}

struct MyCarry {
    static var sliderExchange = " "
}

enum MyError:Error {
case notFound
}

class ModalViewController: UIViewController {

    var sourceViewController: UIViewController!
    var settingVC: ViewController!
    
    @IBOutlet weak var modalLabel: UILabel!
    @IBOutlet weak var modalTextField: UITextField!
    
    
    var sliderNumModal = 101
    var sliderConv = 101
    var sliderNumModalInt = 1
    var sliderNumEnd = " "
    var sliderCarry = " "
    var sliderInt2: Int = 101
    var nilString:Int?
    
   func guardNilModal() {
        guard modalTextField.text != nil else {modalTextField.text = String(noChangeValue.originalSV)
            if sliderNumModal == 101 {
                sliderNumModal = 50
            }
            return
        }
   }
    
    func guardNilSM() {
        guard sliderNumModal != nil else {modalTextField.text = String(noChangeValue.originalSV)
            sliderNumModal = Int(noChangeValue.originalSV)
            if sliderNumModal == 101 {
                sliderNumModal = 50
                //MyErrorMsg.errorLabel = "Invalid slider value entered"
            }
             return
         }
    }
    
    
    @IBAction func modalText(_ sender: UITextField) {
        guardNilModal()
        if modalTextField.text == String(noChangeValue.originalSV) && sliderNumModal == 1 {
            sliderNumModal = 50
        }
        if sliderNumModal == 101 {
            sliderNumModal = 50
        }
        sliderNumEnd = sliderNumModal.description
        sliderNumEnd = modalTextField.text!
    }
    

    
    @IBAction func showSettingView(_ sender: Any) {
        show(settingVC, sender: nil)
    }
    @IBAction func printSliderValue(_ sender: Any) {
        print(sliderNumModal)
    }
    @IBAction func userEditorSlider(_ sender: UITextField) {

        var nilArray = [Int]()
        for i in 0...100 {
            nilArray.append(i)
        }
        
        var sliderConv: Int?
        sliderConv =  Int(modalTextField.text ?? "900")
        let sliderCheck = sliderConv
        
        let nilArrayString = nilArray.map { String($0) }
        var nilCheck: String?
        nilCheck? = String(sliderConv ?? 900)
        
        
        var sliderCheck2: Int
  
        sliderCheck2 = Int(sliderCheck ?? 900)
        if sliderCheck2 == 900 {
            modalTextField.text = "Enter integer 0 to 100 only"
            MyErrorMsg.errorLabel = "Invalid slider value entered"
        }
        
        if sliderCheck2 >= 0 || sliderCheck2 <= 100 {
         DecisionBit.bit = 1
         MyErrorMsg.errorLabel = " "
        }
    
        if sliderCheck2 < 0 || sliderCheck2 > 100 {
         DecisionBit.bit = 2
         MyErrorMsg.errorLabel = "Invalid slider value entered"
        }
        
        if sliderCheck != nil || (sliderCheck ?? 200 >= 0 && sliderCheck ?? 200 <= 100) {
            print("good")// ||
        } else {
            modalTextField.text = "Enter integer 0 to 100 only"
            MyErrorMsg.errorLabel = "Invalid slider value entered"
        }
        
      // if nilArrayString.contains(nilCheck!) {
       if nilArrayString.contains(where: {$0 == nilCheck ?? "900"}) {
           modalTextField.text = "Enter integer 0 to 100 only"
           MyErrorMsg.errorLabel = "Invalid slider value entered"
       }
        if (nilCheck == "900" && sliderCheck == nil) { 
            modalTextField.text = "Enter integer 0 to 100 only"
            MyErrorMsg.errorLabel = "Invalid slider value entered"
        }
        func checkit() throws {  //throws
            if nilCheck == "900" || sliderCheck == nil {
                modalTextField.text = "Enter integer 0 to 100 only"
                MyErrorMsg.errorLabel = "Invalid slider value entered"
            }
        }
        do {
            try checkit()
        } catch MyError.notFound {
            modalTextField.text = "Enter integer 0 to 100 only"
            MyErrorMsg.errorLabel = "Invalid slider value entered"
        } catch {
            //none
        }

        MyCarry.sliderExchange = modalTextField.text!
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        let sourceVC = sourceViewController as! ViewController
        sourceVC.sliderInt = sliderNumModal
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if sliderNumModal == 101 {
            sliderNumModal = 50
        }
        let sliderNumModal2 = Int(sliderNumModal)
        let sliderNumModal3 = String(sliderNumModal2)
        modalTextField.text = sliderNumModal3.description
    }
    
    func textFieldReturn(_ textField: UITextField) -> Bool {
        self.resignFirstResponder()
        return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


