//
//  ViewController.swift
//  GestureRecognizeApp
//
//  Created by Yapindo on 22/01/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        image.isUserInteractionEnabled = true
        
        // Target is a viewcontroller
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePict))
        
        image.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changePict() {
        
        if label.text == "Pandem Body Kit" {
            image.image = UIImage(named: "libertywalkBodyKit")
            label.text = "Liberty Walk Bodykit"
        } else if label.text == "Liberty Walk Bodykit" {
            image.image = UIImage(named: "pandemBodyKit")
            label.text = "Pandem Body Kit"
        }
    }

}

