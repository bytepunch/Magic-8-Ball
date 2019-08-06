//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jörg Klausewitz on 06.08.19.
//  Copyright © 2019 Jörg Klausewitz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imageViewBall: UIImageView!
    
    let ballNames = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomValue : Int = 0
    
    var tempRandomValue: Int = 999
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func becomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        setBallByRandom()
    }
    
    
    @IBAction func askMe(_ sender: Any) {
        setBallByRandom()
    }
    
    func setBallByRandom(){
        randomValue = Int.random(in: 0 ... ballNames.count - 1)
        while tempRandomValue == randomValue {
            randomValue = Int.random(in: 0 ... ballNames.count - 1)
        }
        imageViewBall.image = UIImage(named: ballNames[randomValue])
        tempRandomValue = randomValue
        
    }
}

