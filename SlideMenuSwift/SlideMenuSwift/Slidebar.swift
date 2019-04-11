//
//  Slidebar.swift
//  SlideMenuSwift
//
//  Created by Savan on 12/04/19.
//  Copyright © 2019 Savan. All rights reserved.
//

import UIKit

protocol SlideMenuDelegate {
    func slideMenuItemSelectedAtIndex(_ index : Int32)
}

class Slidebar: UIViewController {

    @IBOutlet var btnCloseMenuOverlay : UIButton!
    
    var btnMenu : UIButton!

    var delegate : SlideMenuDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let Gesture = UISwipeGestureRecognizer.init(target: self, action: #selector(self.SwipeGesture))
        self.view.addGestureRecognizer(Gesture)
    }
    
    @objc func SwipeGesture(sender : UISwipeGestureRecognizer) {

        UIView.animate(withDuration: 0.5, animations: { () -> Void in
            self.view.frame = CGRect(x: UIScreen.main.bounds.size.width - 60 , y: 0, width: UIScreen.main.bounds.size.width,height: UIScreen.main.bounds.size.height)
            self.view.layoutIfNeeded()
            self.view.backgroundColor = UIColor.clear
        }, completion: { (finished) -> Void in
            self.view.removeFromSuperview()
            self.removeFromParent()
        })
    }

    @IBAction func onHomeClick(_ button:UIButton!){
        self.btnMenu.tag = 0
        onCloseMenuClick(btnMenu)
    }
    @IBAction func onPlayClick(_ button:UIButton!){
        self.btnMenu.tag = 1
        onCloseMenuClick(btnMenu)
    }

    @IBAction func onCloseMenuClick(_ button:UIButton!){
        
        if (self.delegate != nil) {
            var index = Int32(button.tag)
            if(button == self.btnCloseMenuOverlay){
                index = -1
            }
            delegate?.slideMenuItemSelectedAtIndex(index)
        }
        
        UIView.animate(withDuration: 0.5, animations: { () -> Void in
            self.view.frame = CGRect(x: UIScreen.main.bounds.size.width - 60 , y: 0, width: UIScreen.main.bounds.size.width,height: UIScreen.main.bounds.size.height)
            self.view.layoutIfNeeded()
            self.view.backgroundColor = UIColor.clear
        }, completion: { (finished) -> Void in
            self.view.removeFromSuperview()
            self.removeFromParent()
        })
    }
    
}
