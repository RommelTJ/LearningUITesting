//
//  MenuViewController.swift
//  LearningUITesting
//
//  Created by Rommel Rico on 10/10/17.
//  Copyright © 2017 Rommel Rico. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var viewDetailButton: UIButton!
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        viewDetailButton.isEnabled = sender.isOn
        viewDetailButton.alpha = sender.isOn ? 1 : 0.5
    }

}
