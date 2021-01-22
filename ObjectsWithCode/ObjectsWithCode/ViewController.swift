//
//  ViewController.swift
//  ObjectsWithCode
//
//  Created by Yapindo on 22/01/21.
//

import UIKit

class ViewController: UIViewController {
    
    var myLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let width = view.frame.size.width // current width
        let height = view.frame.size.height // current height
        
        // Create label
        myLabel.text = "test label"
        myLabel.textAlignment = .center
        /** CGrect Size
         * x        : 50%
         * y        : 50%
         *width   : 80%
         *height  : 50pt
         */
        myLabel.frame = CGRect(x: (width - width * 0.8)/2, y: height * 0.5, width: width * 0.8, height: 50)
        view.addSubview(myLabel)
        
        let myButton = UIButton()
        myButton.setTitle("my Button", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width * 0.5 - 100, y: height * 0.7, width: 200 , height: 100)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(ViewController.myFunction), for: UIControl.Event.touchUpInside)
        print("running")
    }
    
    @objc func myFunction() {
        myLabel.text = "button Tapped"
        print("Tapped")
    }


}

