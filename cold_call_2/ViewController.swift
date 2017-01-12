//
//  ViewController.swift
//  cold_call_2
//
//  Created by Nolan Lindeke on 1/11/17.
//  Copyright © 2017 Nolan Lindeke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var nameBank = ["Bob", "Tony the Tiger", "Alexander Hamilton", "George Washington", "Benjamin Franklin", "Amy Winehouse", "Mick Jagger"]
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func coldCallButton(_ sender: UIButton) {
        numberLabel.isHidden = false
        let length = UInt32(nameBank.count)
        let randomNum = Int(arc4random_uniform(length))
        nameLabel.text = String(nameBank[randomNum])
        numberLabel.text = String(randomNum)
        if randomNum < 3 {
            numberLabel.textColor = UIColor.red
        }
        if randomNum == 3 || randomNum == 4 {
            numberLabel.textColor = UIColor.orange
        }
        if randomNum >= 5 {
            numberLabel.textColor = UIColor.green
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Ready?"
        numberLabel.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

