//
//  ViewController.swift
//  SegueApp
//
//  Created by Yapindo on 20/01/21.
//

import UIKit

class ViewController: UIViewController {

    var nameText = ""
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("ViewDidLoad function called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("ViewWillAppear function called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("ViewDidAppear function called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("ViewDidDisapear function called")
        nameTextField.text = ""
    }
    
    

    @IBAction func nextClick(_ sender: Any) {
        
        nameText = nameTextField.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            // as
            let destinationVC = segue.destination as! SecondViewController
            
            destinationVC.myName = nameText
        }
    }
}

