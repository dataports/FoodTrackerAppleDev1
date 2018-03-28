//
//  ViewController.swift
//  FoodTrackerAppleDev1
//
//  Created by Sophia Amin on 3/28/18.
//  Copyright © 2018 Sophia Amin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate { //UITextFieldDelegate tells the compiler that the ViewController class can act as a valid text field delegate.
    //MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var mealNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //MARK: Actions
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
}

