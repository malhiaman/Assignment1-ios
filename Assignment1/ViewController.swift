//
//  ViewController.swift
//  Assignment1
//
//  Created by Student on 2018-01-11.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var operandFirst: UILabel!
    @IBOutlet weak var Operator: UILabel!
    @IBOutlet weak var operandSecond: UILabel!
    
    @IBOutlet weak var answer: UITextField!
    
    @IBAction func checkButton(_ sender: UIButton) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ResetButton(_ sender: UIButton) {
        
        
    }
    
    @IBAction func CheckButton(_ sender: UIButton) {
        let alert = UIAlertController(title:"You got it!", message:"you won 3 times in this level", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler:nil)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(action)
        alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: nil)
    }
    
}

