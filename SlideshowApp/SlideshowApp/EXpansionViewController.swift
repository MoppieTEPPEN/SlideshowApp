//
//  EXpansionViewController.swift
//  SlideshowApp
//
//  Created by Moppie on 2021/02/26.
//

import UIKit

class EXpansionViewController: UIViewController {
    
    @IBOutlet weak var expansionimage: UIImageView!
    var imageindex = 0
    var timer:Timer!
    var timer_sec : Float = 0
    let images = [UIImage(named: "imageOne"),UIImage(named: "imageTwo"),UIImage(named: "imageThree")]
    var Image = UIImage()
    
    var x = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        expansionimage.image = images[x]
        
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
