//
//  ViewController.swift
//  iOS_WhatsTheNumber
//
//  Created by 王麒翔 on 2023/7/11.
//

import UIKit

class ViewController: UIViewController {
    
    // make a random number
    var answer = Int.random(in: 1...100)

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBAction func makeGuess(_ sender: UIButton) {
        print(answer)
        
        // take input text out // 取得輸入匡數值
        let inputText = inputTextField.text! // ! 驚嘆號保證一定有值
        print("input text = \(inputText)")
        
        let inputNumber = Int(inputText) // String to Int // nil:未輸入
        
        if inputNumber == nil {
            print("no input")
        } else {
            // get input
            if inputNumber! > 100 {
                // user input too large
                print("Too large")
            } else if inputNumber! < 1 {
                // user input too small
                print("Too small")
            } else {
                // check answer
                print("check answer")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // push the keyboard up // 觸發輸入匡讓鍵盤出現
        inputTextField.becomeFirstResponder()
    }


}

