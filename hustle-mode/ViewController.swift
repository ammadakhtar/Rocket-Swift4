//
//  ViewController.swift
//  hustle-mode
//
//  Created by Ammad on 05/10/2017.
//  Copyright © 2017 Ammad. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var mainBackground: UIImageView!
    @IBOutlet weak var powerBtn: UIButton!
    @IBOutlet weak var hustleLbl: UILabel!
    @IBOutlet weak var hustleModeOn: UILabel!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var viewholder: UIView!
    var player: AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError{
            print(error.description)
            
        }
 
    }

   

    @IBAction func powerBtnPressed(_ sender: Any) {
        player.play()
        mainBackground.isHidden = true
        powerBtn.isHidden = true
        self.viewholder.isHidden = false
       
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 280, width: 375, height: 128)
        }) { (finsihed) in
            
            self.hustleLbl.isHidden = false
            self.hustleModeOn.isHidden = false
        }
    }
    
}

