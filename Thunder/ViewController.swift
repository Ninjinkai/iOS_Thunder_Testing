//
//  ViewController.swift
//  Thunder
//
//  Created by Nicholas Petty on 5/9/16.
//  Copyright © 2016 Nicholas Petty. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
   
    @IBOutlet weak var playThunderSoundButton: UIButton!
    var thunderSoundEffect: AVAudioPlayer! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playThunderSoundButton.layer.borderWidth = 2.0
        playThunderSoundButton.layer.borderColor = UIColor.clearColor().CGColor
        playThunderSoundButton.layer.shadowColor = UIColor.blackColor().CGColor
        playThunderSoundButton.layer.shadowOpacity = 0.5
        playThunderSoundButton.layer.shadowRadius = 2.0
        playThunderSoundButton.layer.shadowOffset = CGSizeMake(0, 3)
        
        playThunderSoundButton.addTarget(self, action: #selector(ViewController.buttonPressed), forControlEvents: UIControlEvents.TouchDown)
        
        playThunderSoundButton.addTarget(self, action: #selector(ViewController.buttonReleased), forControlEvents: UIControlEvents.TouchUpInside)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapPlaySoundButton(sender: UIButton) {
        print("Button was pressed.")
        
        let path = NSBundle.mainBundle().pathForResource("thunderAudioFile", ofType: "wav")
        let url = NSURL(fileURLWithPath: path!)
        
        do {
            thunderSoundEffect = try AVAudioPlayer(contentsOfURL: url)
            thunderSoundEffect.prepareToPlay()
            thunderSoundEffect.play()
        } catch let error {
            print ("Audio file not found. \(error)")
        }
        
    }
    
    func buttonPressed() {
        playThunderSoundButton.layer.shadowOffset = CGSizeZero
    }
    
    func buttonReleased() {
        playThunderSoundButton.layer.shadowOffset = CGSizeMake(0, 3)
    }

}
