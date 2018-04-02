//
//  MealViewController.swift
//  FoodTrackerAppleDev1
//
//  Created by Sophia Amin on 3/28/18.
//  Copyright © 2018 Sophia Amin. All rights reserved.
//

import UIKit

class MealViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
   
    
    //MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var ratingControl: RatingControl!
    
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
    
    }
    
    //MARK: UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        //dismiss the picker if the user canceled
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]){
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else{
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        // Set photoImageView to display the selected image.
        photoImageView.image = selectedImage
        // Dismiss the picker.
        dismiss(animated: true, completion: nil)
    }
    
    //MARK: Actions
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        //Hide the keyboard
          //ensures that if the user taps the image view while typing in the text field. the keyboard is dismissed properly
        nameTextField.resignFirstResponder()
        
      //UIImagePickerController is a view controller that lets a user pick media from their photo library
        let imagePickerController = UIImagePickerController() //creates image picker controller
        
        //only allow photos to be picked, not taken
        imagePickerController.sourceType = .photoLibrary //.photolibrary uses the simulatos camera roll
        
         //make sure ViewController is notified when the user picks an image
        imagePickerController.delegate = self
        
        present(imagePickerController, animated: true, completion: nil)
        
    }
    

}

