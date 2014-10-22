//
//  WatchAppViewController.swift
//  WatchSimulator
//
//  Created by temporary on 10/12/14.
//  Copyright (c) 2014 Ben Morrow. All rights reserved.
//

import UIKit

class AppViewController: UIViewController {
    
    var numTaps = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any more setup after this
    }
    
    override func viewWillAppear(animated: Bool) {
        initAppearance()
    }
    
    func initAppearance() -> Void {
        let background = CAGradientLayer().generate(.Turquoise)
        background.frame = self.view.bounds
        self.view.layer.insertSublayer(background, atIndex: 0)
    }
    
    @IBAction func buttonTapped(sender: UIButton) {
        sender.setTitle("\(++numTaps)", forState: .Normal)
    }

    @IBAction func forceTouch(sender: UIButton) {
        self.performSegueWithIdentifier("menu", sender: self)
    }

}
