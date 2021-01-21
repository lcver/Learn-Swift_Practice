//
//  ViewController.swift
//  AlertProject
//
//  Created by Yapindo on 22/01/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signupClick(_ sender: Any) {
        
        if nameText.text == "" {
            makeAlert(title: "Error", message: "Fill username")
        } else if passwordText.text == "" {
            makeAlert(title: "Error", message: "Fill password")
        } else if password2Text.text == "" {
            makeAlert(title: "Error", message: "Fill password again")
        } else if passwordText.text != password2Text.text {
            makeAlert(title: "Error", message: "Password not same")
        } else {
            makeAlert(title: "Success", message: "Something change")
        }
        
    }
    
    
    func makeAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
            // Button clicked
            print("Button Clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
}

