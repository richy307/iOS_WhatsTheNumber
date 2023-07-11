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
    var isOver = false // 遊戲狀態

    // Outlet：元件綁定
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    // Action：元件觸發事件
    @IBAction func makeGuess(_ sender: UIButton) {
        if isOver == false {
            // playing game
            print(answer)
            
            // take input text out // 取得輸入匡數值
            let inputText = inputTextField.text! // ! 驚嘆號 保證一定有值
            let inputNumber = Int(inputText) // String to Int // nil:未輸入 // Int(inputText)!
            print("input text = \(inputText)")
            
            // clear TextField
            inputTextField.text = ""
            
            // check number
            if inputNumber == nil {
                print("no input")
                messageLabel.text = "No input!\n Guess a number between \(minNumber)~\(maxNumber)"
                
            } else {
                // get input
                if inputNumber! > 100 {
                    // user input too large
                    messageLabel.text = "Too large!\n Guess a number between \(minNumber)~\(maxNumber)"
                    print("Too large")
                    
                } else if inputNumber! < 1 {
                    // user input too small
                    messageLabel.text = "Too small!\n Guess a number between \(minNumber)~\(maxNumber)"
                    print("Too small")
                    
                } else {
                    // check answer
                    print("check answer")
                    if inputNumber! == answer {
                        // right answer
                        messageLabel.text = "You are right!\n Press [Guess] to play again"
                        isOver = true
                        
                    } else {
                        // wrong anser
                        if inputNumber! > answer {
                            // larger than answer
                            maxNumber = inputNumber!
                        } else {
                            // smaller than answer
                            minNumber = inputNumber!
                        }
                        messageLabel.text = "Try again!\n Guess a number between \(minNumber)~\(maxNumber)"
                    }
                }
            }
            
        } else {
            // game is over // 狀態重置
            maxNumber = 100
            minNumber = 1
            messageLabel.text = "Guess a number between 1~100"
            answer = Int.random(in: 1...100) // 新的數字
            isOver = false // 重新開始遊戲
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // push the keyboard up // 觸發輸入匡讓鍵盤出現
        inputTextField.becomeFirstResponder()
    }

}

