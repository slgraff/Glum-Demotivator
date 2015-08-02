//
//  ViewController.swift
//  Glum Demotivator
//
//  Created by Stephen Graff on 8/2/15.
//  Copyright (c) 2015 Stephen Graff. All rights reserved.
//

import UIKit
import AudioToolbox

var soundURL: NSURL?
var soundID:SystemSoundID = 0

class ViewController: UIViewController {

    @IBAction func playGlumSound(sender: AnyObject) {
        let filePath = NSBundle.mainBundle().pathForResource("Glum We're Doomed!", ofType: "mp3")
        soundURL = NSURL(fileURLWithPath: filePath!)
        AudioServicesCreateSystemSoundID(soundURL, &soundID)
        AudioServicesPlaySystemSound(soundID)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
