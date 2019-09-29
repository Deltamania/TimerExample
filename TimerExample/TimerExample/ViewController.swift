//
//  ViewController.swift
//  TimerExample
//
//  Created by Murat Han on 28.09.2019.
//  Copyright © 2019 Murat Han. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var beginningValue = 0
    var counter = Timer()

    @IBOutlet weak var Label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func startClicked(_ sender: Any) {
        //We are doing with an update named func
        counter = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(self.update)), userInfo: nil, repeats: true)
    }
    @objc func update(){
        //this is the func that increase the value and update it
        beginningValue += 1
        Label.text = String(beginningValue)
    }
    @IBAction func stopClicked(_ sender: Any) {
        //This func is stopping and reset the value
        counter.invalidate()
        beginningValue = 0
    }
    @IBAction func pauseClicked(_ sender: Any) {
        //it is obvius func right :D 
        counter.invalidate()
    }
    
}

