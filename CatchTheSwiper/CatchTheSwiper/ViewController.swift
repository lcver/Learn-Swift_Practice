//
//  ViewController.swift
//  CatchTheSwiper
//
//  Created by Yapindo on 27/01/21.
//

import UIKit

class ViewController: UIViewController {

    // Properties
    var timer = Timer()
    var hideTimer = Timer()
    var counter = 0
    var score = 0
    var swiperArray = [UIImageView]()
    var highscore = 0
    
    // Views
    @IBOutlet weak var CountTimer: UILabel!
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
        
        // Highscore check
        let storedHighScore = UserDefaults.standard.object(forKey: "Highscore")
        
        if storedHighScore == nil {
            highscore = 0
            Highscore.text = "Highscore: \(highscore)"
        }
        
        if let newScore = storedHighScore as? Int {
            highscore = newScore
            Highscore.text = "Highscore : \(highscore)"
        }
        
        // Images
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
        
        swiperArray = [Swiper1, Swiper2, Swiper3, Swiper4, Swiper5, Swiper6, Swiper7, Swiper8, Swiper9]
        
        // Timer
        counter = 10
        CountTimer.text = String(counter)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
        hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(hideSwiper), userInfo: nil, repeats: true)

        hideSwiper()
        
    }
    
    @objc func hideSwiper() {
        
        for swiper in swiperArray {
            swiper.isHidden = true
        }
        
        let random = Int(arc4random_uniform(UInt32(swiperArray.count - 1)))
        
        swiperArray[random].isHidden = false
        
    }
    
    @objc func increaseScore() {
        score += 1
        ScoreNow.text = "Score : \(score)"
    }
    
    @objc func countDown() {
        counter -= 1
        CountTimer.text = String(counter)
        
        if counter == 0 {
            timer.invalidate()
            hideTimer.invalidate()
            
            for swiper in swiperArray {
                swiper.isHidden = true
            }
            
            if score > highscore {
                Highscore.text = "Highsocre : \(highscore)"
                UserDefaults.standard.setValue(highscore, forKey: "Highscore")
            }
            
            // Alert
            let alert = UIAlertController(title: "Time's up", message: "Do you wan't to play again?", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
            let replayButton = UIAlertAction(title: "Replay", style: UIAlertAction.Style.default) { (UIAlertAction) in
                // Replay Function
                self.score = 0
                self.ScoreNow.text = "Score: \(self.score)"
                self.counter = 10
                self.CountTimer.text = String(self.counter)
                
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.countDown), userInfo: nil, repeats: true)
                self.hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(self.hideSwiper), userInfo: nil, repeats: true)
                
            }
            
            alert.addAction(okButton)
            alert.addAction(replayButton)
            self.present(alert, animated: true, completion: nil)
            
        }
    }


}

