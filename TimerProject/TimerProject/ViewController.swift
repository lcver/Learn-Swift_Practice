//
//  ViewController.swift
//  TimerProject
//
//  Created by Yapindo on 22/01/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counter = 10
        timeLabel.text = "Time : \(counter)"
    }
    
    @objc func timerFunction() {
        timeLabel.text = "Time : \(counter)"
        counter -= 1
        
        if counter == 0 {
            timer.invalidate()
            timeLabel.text = "Time's over"
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // Fail Code
        /*
         
        for _ in 1...10 {
            counter -= 1
            print(counter)
            timeLabel.text = "Time : \(counter)"
            Thread.sleep(forTimeInterval: 1)
        }*/
    }

    @IBAction func btnClick(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval:  1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    
}

