//
//  PlayVC.swift
//  SlideMenuSwift
//
//  Created by Savan on 12/04/19.
//  Copyright © 2019 Savan. All rights reserved.
//

import UIKit

class PlayVC: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
    }

    @IBAction func taponside(_ sender: UIButton) {
        sender.tag = -1
        onSlideMenuButtonPressed(sender)
    }
}
