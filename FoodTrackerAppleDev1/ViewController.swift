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
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
        //self keyword is to represent the view controller class because it's referenced inside the scope of the View controller class definition (like this. in java?)
        
    }
    //MARK: UITextFieldDelegate
    
    /*This method returns a boolean value that indicates whether the system should process the press of the return key. We always want to respond the the use pressing return, so return true. We also resign first responder status when the return key is pressed.*/
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        //when return key is pressed, resign first responder status from textField
        textField.resignFirstResponder()
        return true
    }
    
    /*Called after textfield is no longer first responder. Gives you a chance to read information entered into the text field and do something with it.*/
    func textFieldDidEndEditing(_ textField: UITextField) {
        //assign the meal name label whatever was in the textField
        mealNameLabel.text = textField.text
    }
    
    //MARK: Actions
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
}

