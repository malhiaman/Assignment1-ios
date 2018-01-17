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
    var score = 0
    var round = 0
    var randNum = 0
    
    
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
        // Do any additional setup after loading the view, typically from a nib.
    }
  
   
    func updateOperator(first: String, second: String) {
        operandFirst.text = first
        operandSecond.text = second
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
        round += 1
        var firstRand : Int
        var secondRand : Int
        randNum = Int(arc4random_uniform(4))
        firstRand = Int(arc4random_uniform(10))
        secondRand = Int(arc4random_uniform(10))
        updateOperator(first: ("\(firstRand)"), second: "\(secondRand)")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func ResetButton(_ sender: UIButton) {
        score = 0
        round = 0
        
    }
    func checkforans(){
        var expected = 0
        
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
        
        let answer2: Int? = Int(answer.text!)
        if answer2 == expected {
            let alert = UIAlertController(title:"You got it!", message:"you won 3 times in this level", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler:nil)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            alert.addAction(action)
            alert.addAction(cancelAction)
            
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func CheckButton(_ sender: UIButton) {
        generateRandomOperands()
        checkforans()
    }
    
}





