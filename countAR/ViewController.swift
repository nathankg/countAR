//
//  ViewController.swift
//  countAR
//
//  Created by Nathan Gupta on 6/12/17.
//  Copyright © 2017 Nathan Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // model
    var count = 0 {
        //property observer
        didSet {
            updateUI()
        }
    }

    // view
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func add(_ sender: Any) {
        count += 1
    }
    
    @IBAction func subtract(_ sender: Any) {
        count -= 1
    }
    
    @IBAction func reset(_ sender: Any) {
        count = 0
    }
    
    @IBOutlet weak var minusButton: UIButton!
    
    private func updateUI() {
        countLabel.text = "\(count)"
        minusButton.isEnabled = count > 0
    }
}

