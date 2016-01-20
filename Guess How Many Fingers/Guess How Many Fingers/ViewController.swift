//
//  ViewController.swift
//  Guess How Many Fingers
//
//  Created by Eduardo Amaral on 20/01/16.
//  Copyright © 2016 Eduardo Amaral. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userGuessTextField: UITextField!
    @IBOutlet weak var guessResult: UILabel!
    @IBAction func guess(sender: AnyObject) {
        let secretNumber = String(arc4random_uniform(6))
        if  secretNumber == userGuessTextField.text {
            guessResult.text = "You are right"
        } else {
            guessResult.text = "Wrong answer. It was a " + secretNumber
        }
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

