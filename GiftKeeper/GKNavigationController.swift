//
//  GKNavigationController.swift
//  GiftKeeper
//
//  Created by Crystal Mora on 3/22/16.
//  Copyright © 2016 Crystal Mora. All rights reserved.
//

import UIKit

class GKNavigationController: UINavigationController {
    var menuButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        menuButton = UIButton()
        menuButton.setTitle("+", forState: UIControlState.Normal)
        menuButton.backgroundColor = UIColor.greenColor()
        menuButton.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        

        self.view.addSubview(menuButton)
        
        
    }

}
