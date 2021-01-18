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
    }

    @IBAction func saveClick(_ sender: Any) {
        nameLabel.text = "Name : \(nameTextField.text!)"
        birthdayLabel.text = "Birthday : \(birthdayTextField.text!)"
    }
    
}

