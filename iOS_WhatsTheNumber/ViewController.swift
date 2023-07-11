//
//  ViewController.swift
//  iOS_WhatsTheNumber
//
//  Created by 王麒翔 on 2023/7/11.
//

import UIKit

class ViewController: UIViewController {
    
    var answer: Int = Int.random(in: 1...100) // 產生亂數 random number // make a random number
    var maxNumber = 100
    var minNumber = 1

    // Outlet：元件綁定
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    // Action：元件觸發事件
    @IBAction func makeGuess(_ sender: UIButton) {
        print(answer)
        
        // take input text out // 取得輸入匡數值
        let inputText = inputTextField.text! // ! 驚嘆號 保證一定有值
        let inputNumber = Int(inputText) // String to Int // nil:未輸入
        print("input text = \(inputText)")
        
        // clear TextField
        inputTextField.text = ""
        
        // check number
        if inputNumber == nil {
            print("no input")
            messageLabel.text = "No input! Guess a number between \(minNumber)~\(maxNumber)"
            
        } else {
            // get input
            if inputNumber! > 100 {
                // user input too large
                messageLabel.text = "Too large! Guess a number between \(minNumber)~\(maxNumber)"
                print("Too large")
                
            } else if inputNumber! < 1 {
                // user input too small
                messageLabel.text = "Too small! Guess a number between \(minNumber)~\(maxNumber)"
                print("Too small")
                
            } else {
                // check answer
                print("check answer")
                if inputNumber! == answer {
                    // right answer
                    messageLabel.text = "You are right!"
                } else {
                    // wrong anser
                    if inputNumber! > answer {
                        // larger than answer
                        maxNumber = inputNumber!
                    } else {
                        // smaller than answer
                        minNumber = inputNumber!
                    }
                    messageLabel.text = "Try again! Guess a number between \(minNumber)~\(maxNumber)"
                }
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

