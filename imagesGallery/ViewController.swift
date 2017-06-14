//
//  ViewController.swift
//  imagesGallery
//
//  Created by vignesh on 6/15/17.
//  Copyright © 2017 vignesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageview: UIImageView!
    var images : [UIImage] = [#imageLiteral(resourceName: "10"),#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "6"),#imageLiteral(resourceName: "1"),#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "9"),#imageLiteral(resourceName: "4"),#imageLiteral(resourceName: "8"),#imageLiteral(resourceName: "3"),#imageLiteral(resourceName: "7")] //use imageliterals
    var timer = Timer()
    var index = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      self.timerAction()
        
    }
    
    func timerAction() {
        
         timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(ViewController.imagesMoved), userInfo: nil, repeats: true)
    }
    
    
    func imagesMoved() {
        if index >= images.count {
            index = 0
        }
        
        imageview.image = images[index]
        
        index += 1
    }

    @IBAction func PauseButtonAction(_ sender: UIButton) {
        
        if timer.isValid {
            timer.invalidate()
        }
        
    }
    
    @IBAction func RestartButtonAction(_ sender: Any) {
        if !timer.isValid {
            
            self.timerAction()
        }
        
    }
    
    

}

