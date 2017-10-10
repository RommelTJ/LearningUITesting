//
//  DetailViewController.swift
//  LearningUITesting
//
//  Created by Rommel Rico on 10/10/17.
//  Copyright © 2017 Rommel Rico. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var value = 0
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBAction func incrementTapped(_ sender: UIButton) {
        value += 1
        valueLabel.text = "\(value)"
        valueLabel.accessibilityValue = valueLabel.text
    }

}
