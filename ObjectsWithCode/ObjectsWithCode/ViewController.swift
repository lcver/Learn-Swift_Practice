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
        
        let width = view.frame.size.width // current width
        let height = view.frame.size.height // current height
        
        // Create label
        let myLabel = UILabel()
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
        
        print("running")
    }


}

