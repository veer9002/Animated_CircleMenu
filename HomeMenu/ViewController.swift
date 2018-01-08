//
//  ViewController.swift
//  HomeMenu
//
//  Created by Syon on 8/22/17.
//  Copyright © 2017 Syon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnone: UIButton!
    @IBOutlet weak var btnTwo: UIButton!
    @IBOutlet weak var btnThree: UIButton!
    @IBOutlet weak var btnFour: UIButton!
    @IBOutlet weak var btnFive: UIButton!
//    @IBOutlet weak var btnSix: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.navigationController?.navigationBar.isHidden = true
        
        btnone.layer.cornerRadius = 45
        btnTwo.layer.cornerRadius = 45
        btnThree.layer.cornerRadius = 45
        btnFour.layer.cornerRadius = 45
        btnFive.layer.cornerRadius = 45
//        btnSix.layer.cornerRadius = 45
        
        self.btnone.isHidden = true
        self.btnTwo.isHidden = true
        self.btnThree.isHidden = true
        self.btnFour.isHidden = true
        self.btnFive.isHidden = true
//        self.btnSix.isHidden = true
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(ViewController.buttonAppearanceOne), userInfo: nil, repeats: false)
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(ViewController.buttonAppearanceTwo), userInfo: nil, repeats: false)
        Timer.scheduledTimer(timeInterval: 0.6, target: self, selector: #selector(ViewController.buttonAppearanceThree), userInfo: nil, repeats: false)
        Timer.scheduledTimer(timeInterval: 0.8, target: self, selector: #selector(ViewController.buttonAppearanceFour), userInfo: nil, repeats: false)
        Timer.scheduledTimer(timeInterval: 0.9, target: self, selector: #selector(ViewController.buttonAppearanceFive), userInfo: nil, repeats: false)
//        Timer.scheduledTimer(timeInterval: 0.9, target: self, selector: #selector(ViewController.buttonAppearanceSix), userInfo: nil, repeats: false)
        
//        let pulsator = Pulsator()
//        btnone.layer.addSublayer(pulsator)
//        pulsator.start()
//        pulsator.numPulse = 5
//
//        let pulsator1 = Pulsator()
//        btnFour.layer.addSublayer(pulsator1)
//        pulsator1.start()
//        pulsator1.numPulse = 5
        
    }

    override func viewWillAppear(_ animated: Bool) {
//         super.viewWillAppear(true)
       animatedButton()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
         animatedButton()
    }
   
    
    func buttonAppearanceOne() {
        self.btnone.isHidden = false
    }
    func buttonAppearanceTwo() {
        self.btnTwo.isHidden = false
    }
    func buttonAppearanceThree() {
        self.btnThree.isHidden = false
    }
    func buttonAppearanceFour() {
        self.btnFour.isHidden = false
    }
    func buttonAppearanceFive() {
        self.btnFive.isHidden = false
    }
//    func buttonAppearanceSix() {
//        self.btnSix.isHidden = false
//    }
  
   
    
    func animatedButton() {
    
        UIView.animate(withDuration: 2,
                                   delay: 0,
                                   options: [.autoreverse, .repeat, .allowUserInteraction],
                                   animations:
            { () -> Void in
                self.btnone.transform = CGAffineTransform(scaleX: 0.8,y: 0.8)
                self.btnTwo.transform = CGAffineTransform(scaleX: 0.8,y: 0.8)
                self.btnThree.transform = CGAffineTransform(scaleX: 0.8,y: 0.8)
                self.btnFour.transform = CGAffineTransform(scaleX: 0.8,y: 0.8)
                self.btnFive.transform = CGAffineTransform(scaleX: 0.8,y: 0.8)
//                self.btnSix.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
                
                self.btnone.alpha = 0.5
                self.btnTwo.alpha = 0.5
                self.btnThree.alpha = 0.5
                self.btnFour.alpha = 0.5
                self.btnFive.alpha = 0.5
//                self.btnSix.alpha = 0.5
            
        },
        completion: nil
        );
        
    }
    
   /*
    
    func animationNew() {
        
        UIView.animate(withDuration : 2,
                        delay: 0,
                        usingSpringWithDamping : 1,
                        initialSpringVelocity : 0.5,
                        options: [.repeat, .autoreverse, .allowUserInteraction, .curveEaseInOut],
                        animations: { () -> Void in
        
                            self.btnone.transform = CGAffineTransform(scaleX: 0.8,y: 0.8)
                            self.btnTwo.transform = CGAffineTransform(scaleX: 0.8,y: 0.8)
                            self.btnThree.transform = CGAffineTransform(scaleX: 0.8,y: 0.8)
                            self.btnFour.transform = CGAffineTransform(scaleX: 0.8,y: 0.8)
                            self.btnFive.transform = CGAffineTransform(scaleX: 0.8,y: 0.8)
                            self.btnSix.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
                            
                            self.btnone.alpha = 0.5
                            self.btnTwo.alpha = 0.5
                            self.btnThree.alpha = 0.5
                            self.btnFour.alpha = 0.5
                            self.btnFive.alpha = 0.5
                            self.btnSix.alpha = 0.5

        
        },
                        completion: nil)
    }
    
    func animation3() {
      
        UIView.animate(withDuration: 2, delay: 1, usingSpringWithDamping: 0.5, initialSpringVelocity: 5, options:[.repeat, .allowUserInteraction] , animations: {
            self.btnTwo.alpha = 0.5
            self.btnTwo.transform = CGAffineTransform(scaleX: 0.8,y: 0.8)
        })
        { _ in
            self.btnTwo.removeFromSuperview()
        }
    }
   */
    
}

















