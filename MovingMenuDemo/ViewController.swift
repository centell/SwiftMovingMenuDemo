//
//  ViewController.swift
//  MovingMenuDemo
//
//  Created by Centell on 2017. 9. 6..
//  Copyright © 2017년 RLidea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var menuLeadingContraint: NSLayoutConstraint!
    
    @IBOutlet weak var menuView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func openBtn(_ sender: UIButton) {
        menuLeadingContraint.constant = 0
        menuView.layer.shadowOpacity = 1
        menuView.layer.shadowRadius = 6
        animateMenuMoving()
    }

    @IBAction func closeBtn(_ sender: Any) {
        menuLeadingContraint.constant = -300
        menuView.layer.shadowOpacity = 0
        menuView.layer.shadowRadius = 0
        animateMenuMoving()
    }
    
    
    func animateMenuMoving() {
        UIView.animate(withDuration: 0.3, animations: {
            self.view.layoutIfNeeded()
        })
    }
}

