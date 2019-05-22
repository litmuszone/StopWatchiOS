//
//  ViewController.swift
//  StopWatch
//
//  Created by RAJAT GUPTA on 22/05/19.
//  Copyright © 2019 RAJAT GUPTA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var time = 0;
    
    //timer
    var timer = Timer()
    
    
    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func reset(_ sender: Any) {
        timer.invalidate()
        time = 0;
        lbl.text = ("0")
    }
    
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()

    }
    
    
    @IBAction func start(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
    }
    
    @objc func action(){
        time += 1
        lbl.text = String(time);
    }
}

