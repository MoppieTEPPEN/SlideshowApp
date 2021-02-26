//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Moppie on 2021/02/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slide: UIImageView!
    var imageindex = 0
    var timer:Timer!
    var timer_sec : Float = 0
    let images = [UIImage(named: "imageOne"),UIImage(named: "imageTwo"),UIImage(named: "imageThree")]
    
   
    
    @IBOutlet weak var nextimageoutlet: UIButton!
    @IBOutlet weak var backimageoutlet: UIButton!
    
    
    
    override func viewDidLoad() {
        
     super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let imageView = images[0]
        
        
        
        slide.image = imageView
    }
    @objc func slideshowTimer(_ timer: Timer){
        self.timer_sec += 2.0
        if timer_sec == 6 {
            slide.image = images[0]
            timer_sec = 0
        }else if timer_sec == 2 {
            slide.image = images[1]
        } else if timer_sec == 4 {
            slide.image = images[2]
        }
    }
    

    @IBAction func nextimage(_ sender: Any) {
        
        if timer != nil {
            nextimageoutlet.isEnabled = false
        }
        if imageindex == 2 {
            imageindex = 0
        }else {
            imageindex += 1
        
        }; slide.image = images [imageindex]
        
    }
    
    @IBAction func backimage(_ sender: Any) {
        if timer != nil {
            backimageoutlet.isEnabled = false
        }
        
        if imageindex == 0 {
            imageindex = 2
        } else {
            imageindex -= 1
        }; slide.image = images [imageindex]    }
    
       
    
    
    @IBAction func startstop(_ sender: Any) {
        
        if (timer == nil) {
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(slideshowTimer(_:)), userInfo: nil, repeats: true)
        }else {
            self.timer.invalidate()
            timer = nil
            nextimageoutlet.isEnabled = true
            backimageoutlet.isEnabled = true        }
        
     
        
    }
    
}

