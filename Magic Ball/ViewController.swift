//
//  ViewController.swift
//  Magic Ball
//
//  Created by Srinath Koneru on 1/8/19.
//  Copyright © 2019 Srinath Koneru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MagicBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        MagicBall.image = UIImage(named: getAnswerBallImage())
    }

    @IBAction func AskButton(_ sender: Any) {
        MagicBall.image = UIImage(named: getAnswerBallImage())
    }
    
    func getAnswerBallImage() -> String {
        let randonNumber = Int.random(in: 0...4)
        let imageArr = ["ball1", "ball2", "ball3", "ball4", "ball5"]
        return imageArr[randonNumber]
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        MagicBall.image = UIImage(named: getAnswerBallImage())
    }
}

