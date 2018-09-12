//
//  ViewController.swift
//  SpiritBall
//
//  Created by prabhanjan on 01/09/18.
//  Copyright © 2018 manorishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerBallImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        assignRandomImageToBall()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askNowButtonAction(_ sender: UIButton) {
        assignRandomImageToBall()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        assignRandomImageToBall()
    }
    
    func assignRandomImageToBall(){
        answerBallImageView.image = UIImage(named: "ball\(arc4random_uniform(5)+1)")
    }
    
}

