//
//  ViewController.swift
//  JokenpoApp
//
//  Created by user220237 on 4/22/22.
//

import UIKit

class ViewController: UIViewController {

        
    @IBOutlet weak var choicePlayer1: UILabel!
    
    
    @IBOutlet weak var choicePlayer2: UILabel!
    
    
    @IBOutlet weak var winnerLabel: UITextField!
    
    @IBOutlet weak var scorePlayer1: UITextField!
    var countScore1 = 0
    
    @IBOutlet weak var scorePlayer2: UITextField!
    var countScore2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func winner() {
        if (choicePlayer1.text == "Rock" && choicePlayer2.text == "Scissors") || (choicePlayer1.text == "Scissors" && choicePlayer2.text == "Paper") || (choicePlayer1.text == "Paper" && choicePlayer2.text == "Rock") {
                   
            countScore1 += 1
            scorePlayer1.text = "\(countScore1)"
            winnerLabel.text = "Player 1 Won !"
            
        } else if (choicePlayer2.text == "Rock" && choicePlayer1.text == "Scissors") || (choicePlayer2.text == "Scissors" && choicePlayer1.text == "Paper") || (choicePlayer2.text == "Paper" && choicePlayer1.text == "Rock") {
            
            countScore2 += 1
            scorePlayer2.text = "\(countScore2)"
            winnerLabel.text = "Player 2 Won !"
            
        } else {
            winnerLabel.text = "Draw"
        }

    }

    @IBAction func buttonRock(_ sender: UIButton) {
        choicePlayer1.text = "Rock"
        
        let array = ["Rock", "Paper", "Scissors"]
        choicePlayer2.text = array.randomElement()
        
        winner()
    }
    
    
    @IBAction func buttonPaper(_ sender: UIButton) {
        choicePlayer1.text = "Paper"
        
        let array = ["Rock", "Paper", "Scissors"]
        choicePlayer2.text = array.randomElement()
        
        winner()
    }
    
    
    @IBAction func buttonScissors(_ sender: UIButton) {
        choicePlayer1.text = "Scissors"
        
        let array = ["Rock", "Paper", "Scissors"]
        choicePlayer2.text = array.randomElement()
        
        winner()
    }
    
}

