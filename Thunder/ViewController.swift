//
//  ViewController.swift
//  Thunder
//
//  Created by Nicholas Petty on 5/9/16.
//  Copyright © 2016 Nicholas Petty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playSoundButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        playSoundButton.setTitle("Call down the Thunder!", forState: .Normal)
        playSoundButton.backgroundColor = UIColor.redColor()
        playSoundButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapPlaySoundButton(sender: UIButton) {
        print("Button was pressed.")
    }

}

