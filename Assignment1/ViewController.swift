//
//  ViewController.swift
//  Assignment1
//
//  Created by Student on 2018-01-11.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var a = 0
    var b = 0
    var randNum = 0
    var expected = 0
    var question = 0


    @IBOutlet weak var operandFirst: UILabel!
    @IBOutlet weak var Operator: UILabel!
    @IBOutlet weak var operandSecond: UILabel!
    @IBOutlet weak var answer: UITextField!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!


    @IBAction func checkButton(_ sender: UIButton) {


    }


    override func viewDidLoad() {
        super.viewDidLoad()
        generateRandomOperands()
        // Do any additional setup after loading the view, typically from a nib.
    }


    func updateOperator(first: String, second: String) {
        operandFirst.text = first
        operandSecond.text = second
        randNum = Int(arc4random_uniform(4))
        a = Int(first)!
        b = Int(second)!
        switch (randNum) {
        case 0: Operator.text = "+"
            break
        case 1: Operator.text = "-"
            break
        case 2: Operator.text = "*"
            break
        case 3: Operator.text = "/"
            break
        default:
            break
        }
    }

    func generateRandomOperands() {

        var firstRand: Int
        var secondRand: Int

        firstRand = Int(arc4random_uniform(10))
        secondRand = Int(arc4random_uniform(10))
        updateOperator(first: ("\(firstRand)"), second: "\(secondRand)")
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    @IBAction func ResetButton(_ sender: UIButton) {
        scoreLabel.text = String(0)
        roundLabel.text = String(0)
        levelLabel.text = String(0)
        generateRandomOperands()

    }


    func actualAnswer() {

        switch (randNum) {
        case 0: expected = a + b

            break
        case 1: expected = a - b

            break
        case 2: expected = a * b

            break
        case 3: expected = a / b

            break
        default:
            break
        }
    }

    func checkans() {
        let answer2: Int? = Int(answer.text!)
        if answer2 == expected {
            scoreLabel.text = String(Int(scoreLabel.text!)! + 1)
            roundLabel.text = String(Int(roundLabel.text!)! + 1)
            question += 1
        }

            else {
                roundLabel.text = String(Int(roundLabel.text!)! + 1)
                question += 1

        }

    }

    func msg() {

        if(answer.text == "")
        {
            let alert = UIAlertController(title: "Please enter a number", message: "", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)

        }

        if (Int(roundLabel.text!)! % 3 == 0)
            {
            let alert2 = UIAlertController(title: "You Got it!", message: "You won \(question) times in this level", preferredStyle: .alert)

            let action2 = UIAlertAction(title: "OK", style: .default)
            alert2.addAction(action2)
            present(alert2, animated: true, completion: nil)
            levelLabel.text = String(Int(levelLabel.text!)! + 1)
            scoreLabel.text = String(Int(scoreLabel.text!)! + 1)
            question = 0
        }
    }

    @IBAction func CheckButton(_ sender: UIButton) {
        generateRandomOperands()
        actualAnswer()
        checkans()
        msg()
    }


}





