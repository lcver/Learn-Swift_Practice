//
//  ViewController.swift
//  ObjectsWithCode
//
//  Created by Yapindo on 22/01/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Create label
        let myLabel = UILabel()
        myLabel.text = "test label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        
        
        view.addSubview(myLabel)
        
        print("running")
    }


}

