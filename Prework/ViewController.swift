//
//  ViewController.swift
//  Prework
//
//  Created by Abdul Andha on 12/23/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var petsLabel: UILabel!
    @IBOutlet weak var morePetsLabel: UILabel!
    @IBOutlet weak var darkModeLabel: UILabel!
    @IBOutlet weak var darkModeSwitch: UISwitch!
    
    @IBAction func IntroduceButtonDidTap(_ sender: UIButton) {
        
        // get year
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        // create intro
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I am currently in my \(year!) year at \(schoolNameTextField.text!). I own \(numberOfPetsLabel.text!) pets and it is \(morePetsSwitch.isOn) that I want more pets!"
        
        // creates the alert in which intro is passed
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        // a way to dismiss the alert box
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // passing action to alert controller
        alertController.addAction(action)
        
        // present alert controller
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func darkModeChange(_ sender: UISwitch) {
        if (sender.isOn) {
            // change background color
            self.view.backgroundColor = #colorLiteral(red: 0.03491920978, green: 0.08736505359, blue: 0.1252539158, alpha: 1)
            
            // change labels color
            firstNameLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            lastNameLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            schoolLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            petsLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            morePetsLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            numberOfPetsLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            darkModeLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            
            // change text fields color
            firstNameTextField.backgroundColor = #colorLiteral(red: 0.1028801426, green: 0.2826176882, blue: 0.4050050974, alpha: 1)
            lastNameTextField.backgroundColor = #colorLiteral(red: 0.1028801426, green: 0.2826176882, blue: 0.4050050974, alpha: 1)
            schoolNameTextField.backgroundColor = #colorLiteral(red: 0.1028801426, green: 0.2826176882, blue: 0.4050050974, alpha: 1)
            
            firstNameTextField.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            lastNameTextField.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            schoolNameTextField.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            
            // change segmented control color
            yearSegmentedControl.selectedSegmentTintColor = #colorLiteral(red: 0.03491920978, green: 0.08736505359, blue: 0.1252539158, alpha: 1)
            yearSegmentedControl.backgroundColor = #colorLiteral(red: 0.1028801426, green: 0.2826176882, blue: 0.4050050974, alpha: 1)
            yearSegmentedControl.setTitleTextAttributes([.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)], for: .selected)
            yearSegmentedControl.setTitleTextAttributes([.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)], for: .normal)
            
            // change stepper color
            morePetsStepper.backgroundColor = #colorLiteral(red: 0.1028801426, green: 0.2826176882, blue: 0.4050050974, alpha: 1)
            
        } else {
            // change background color
            self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            
            // change labels color
            firstNameLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            lastNameLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            schoolLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            petsLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            morePetsLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            numberOfPetsLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            darkModeLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            
            // change text fields color
            firstNameTextField.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            lastNameTextField.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            schoolNameTextField.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            
            firstNameTextField.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            lastNameTextField.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            schoolNameTextField.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            
            // change segmented control color
            yearSegmentedControl.selectedSegmentTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            yearSegmentedControl.backgroundColor = #colorLiteral(red: 0.9282462001, green: 0.9282462001, blue: 0.9282462001, alpha: 1)
            yearSegmentedControl.setTitleTextAttributes([.foregroundColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)], for: .selected)
            yearSegmentedControl.setTitleTextAttributes([.foregroundColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)], for: .normal)
            
            // change stepper color
            morePetsStepper.backgroundColor = #colorLiteral(red: 0.9282462001, green: 0.9282462001, blue: 0.9282462001, alpha: 1)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

