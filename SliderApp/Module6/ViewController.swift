//
//  ViewController.swift
//  Module6
//
//  Created by Matthew Anderson on 11/14/22.
//

import UIKit
import Foundation

struct MyErrorMsg {
    static var errorLabel = " "
}
struct noChangeValue {
    static var originalSV: Float = 50.0
}

enum MyError2:Error {
case notFound2
}

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var errorLabel: UILabel!
    
    var sliderNum: Float = 50.0
    var sliderNum2 = 1
    var sliderGoHome:String = " "
    var sliderGoHome2: Float = 50.0
    var sliderIntChecker = 101
    var sliderInt = 1
    var myNumber: Float = 50.0
    var lastSlider: Float = 50.0
    
    @IBAction func changeSlider(_ sender: UISlider) {
        noChangeValue.originalSV = mySlider.value  //keep original value if error
        lastSlider = mySlider.value
        sliderNum = mySlider.value
        sliderIntChecker = 1
        sliderInt = Int(sliderNum)
    }
    
    func guardNilSlider() {
        guard mySlider != nil else {mySlider.value = noChangeValue.originalSV
            sliderInt = Int(lastSlider)
             return
         }
    }
    
    @IBAction func goBack(unwindSegue: UIStoryboardSegue) {
        DecisionBit.bit = 1
        if MyCarry.sliderExchange.isEmpty {
            DecisionBit.bit = 2
            MyCarry.sliderExchange = String(noChangeValue.originalSV)
            MyErrorMsg.errorLabel = "Invalid slider value entered"
            errorLabel.text = "Invalid slider value entered"
            mySlider.value = noChangeValue.originalSV
        }
        sliderGoHome = MyCarry.sliderExchange
        var myErrorCheck1 = Int(sliderGoHome ?? String(noChangeValue.originalSV))

        if myErrorCheck1 == nil {
            DecisionBit.bit = 2
            MyErrorMsg.errorLabel = "Invalid slider value entered"
            errorLabel.text = "Invalid slider value entered"
            myErrorCheck1 = Int(noChangeValue.originalSV)
        }
        if myErrorCheck1! >= 0 || myErrorCheck1! <= 100 {
            DecisionBit.bit = 1
            MyErrorMsg.errorLabel = " "
            errorLabel.text = " "
            if sliderGoHome.isEmpty {
                sliderGoHome = String(mySlider.value)
            }
            if sliderGoHome == nil {
                sliderGoHome = String(mySlider.value)
            }
            if sliderGoHome == " " {
                sliderGoHome = String(noChangeValue.originalSV)
            }
            sliderGoHome2 = Float(sliderGoHome) ?? 50 ///*****
            mySlider.value = sliderGoHome2
            sliderInt = Int(sliderNum) // *******
        }
        if myErrorCheck1! < 0 || myErrorCheck1! > 100 {
            DecisionBit.bit = 2
            MyErrorMsg.errorLabel = "Invalid slider value entered"
            errorLabel.text = "Invalid slider value entered"
            mySlider.value = noChangeValue.originalSV
        }
        func checkit2() throws {  //throws
            if sliderGoHome == nil || sliderGoHome2 == nil {
               print("Missing value")
            }
        }
        do {
            try checkit2()
        } catch MyError.notFound {
            print("Missing value")
        } catch {
            //none
        }
    }
    
    func textFieldReturn(_ textField: UITextField) -> Bool {
        self.resignFirstResponder()
        return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        mySlider.value = sliderNum
        DecisionBit.bit = 0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
         if(segue.identifier == "toModalView") {
             guardNilSlider()
             if sliderIntChecker == 101 {
                 sliderInt = 101
             }
             if sliderIntChecker != 101 {
                 sliderInt = Int(sliderNum)
             }
             let dVC = segue.destination as? UINavigationController
             let dVC2 = dVC?.viewControllers[0] as? ModalViewController
             dVC2?.sliderNumModal = sliderInt
             dVC2?.sourceViewController = self
         }
     }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}

