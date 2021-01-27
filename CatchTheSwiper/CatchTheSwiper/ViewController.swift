//
//  ViewController.swift
//  CatchTheSwiper
//
//  Created by Yapindo on 27/01/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var CountTimer: UILabel!
    
    
    var score = 0
    @IBOutlet weak var ScoreNow: UILabel!
    @IBOutlet weak var Highscore: UILabel!
    
    
    @IBOutlet weak var Swiper1: UIImageView!
    @IBOutlet weak var Swiper2: UIImageView!
    @IBOutlet weak var Swiper3: UIImageView!
    @IBOutlet weak var Swiper4: UIImageView!
    @IBOutlet weak var Swiper5: UIImageView!
    @IBOutlet weak var Swiper6: UIImageView!
    @IBOutlet weak var Swiper7: UIImageView!
    @IBOutlet weak var Swiper8: UIImageView!
    @IBOutlet weak var Swiper9: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ScoreNow.text = "Score : \(score)"
        
        Swiper1.isUserInteractionEnabled = true
        Swiper2.isUserInteractionEnabled = true
        Swiper3.isUserInteractionEnabled = true
        Swiper4.isUserInteractionEnabled = true
        Swiper5.isUserInteractionEnabled = true
        Swiper6.isUserInteractionEnabled = true
        Swiper7.isUserInteractionEnabled = true
        Swiper8.isUserInteractionEnabled = true
        Swiper9.isUserInteractionEnabled = true
        
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        
        Swiper1.addGestureRecognizer(recognizer1)
        Swiper2.addGestureRecognizer(recognizer2)
        Swiper3.addGestureRecognizer(recognizer3)
        Swiper4.addGestureRecognizer(recognizer4)
        Swiper5.addGestureRecognizer(recognizer5)
        Swiper6.addGestureRecognizer(recognizer6)
        Swiper7.addGestureRecognizer(recognizer7)
        Swiper8.addGestureRecognizer(recognizer8)
        Swiper9.addGestureRecognizer(recognizer9)
        
    }
    
    @objc func increaseScore() {
        
    }


}

