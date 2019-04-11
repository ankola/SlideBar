//
//  ViewController.swift
//  SlideMenuSwift
//
//  Created by Savan on 12/04/19.
//  Copyright © 2019 Savan. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        addSlideMenuButton()
  
        let vc = HomeVC.init(nibName: "HomeVC", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
        
//        self.view.backgroundColor = UIColor.green
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let vc = HomeVC.init(nibName: "HomeVC", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }


}

