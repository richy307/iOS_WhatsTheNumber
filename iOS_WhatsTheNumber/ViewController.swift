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
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // push the keyboard up // 觸發輸入匡讓鍵盤出現
        inputTextField.becomeFirstResponder()
    }


}

