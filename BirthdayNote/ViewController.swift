//
//  ViewController.swift
//  BirthdayNote
//
//  Created by Yapindo on 18/01/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        // Casting - as? vs. as!
        
        if let myName = storedName as? String,
           let myBirthday = storedBirthday as? String{
            nameLabel.text = "Name : \(myName)"
            birthdayLabel.text = "Birthday : \(myBirthday)"
        }
    }

    @IBAction func saveClick(_ sender: Any) {
        
        UserDefaults.standard.set(nameTextField.text, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text, forKey: "birthday")
        
        nameLabel.text = "Name : \(nameTextField.text!)"
        birthdayLabel.text = "Birthday : \(birthdayTextField.text!)"
    }
    
    @IBAction func deleteClick(_ sender: Any) {
    
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        // "" vs nil
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name :"
        }
        
        if (storedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            
            birthdayLabel.text = "Birthday :"
        }
    }
}

