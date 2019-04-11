//
//  HomeVC.swift
//  SlideMenuSwift
//
//  Created by Savan on 12/04/19.
//  Copyright © 2019 Savan. All rights reserved.
//

import UIKit

class HomeVC: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        
        let Gesture = UISwipeGestureRecognizer.init(target: self, action: #selector(self.SwipeGesture))
        self.view.addGestureRecognizer(Gesture)
    }
    
    @objc func SwipeGesture(sender : UISwipeGestureRecognizer) {
        let btn = UIButton()
        self.tapslidebar(btn)
    }
    
    @IBAction func tapslidebar(_ sender: UIButton) {
        sender.tag = -1
        onSlideMenuButtonPressed(sender)
    }
}
