//
//  ViewController.swift
//  Cat Years
//
//  Created by admin on 04/08/15.
//  Copyright © 2015 enrique7mc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var catAgeTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func findAge(sender: AnyObject) {
        if(catAgeTextField.text!.isEmpty) {
            resultLabel.text = "Enter an age"
            return
        }
        
        if let age = Int(catAgeTextField.text!) {
            let catAge = age * 7
            resultLabel.text = "Your cat is \(catAge) years old"
        } else {
            resultLabel.text = "Age is invalid"
        }
    }
}

