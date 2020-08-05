//
//  ViewController.swift
//  Xylophone
//
//  Created by Mehmet Aydın Bekem on 03/08/2020.
//  Studied from Udemy course.
//  All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(whichSound: sender.currentTitle!)
    }
    
    func playSound(whichSound: String) {
    let url = Bundle.main.url(forResource: whichSound, withExtension: "wav")
    player = try! AVAudioPlayer(contentsOf: url!)
    player.play()
    
    }


}

