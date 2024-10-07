//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    let eggTimes = ["Soft": 10, "Medium": 15, "Hard" : 20]
    var timer = Timer()
    var totalSecond = 0
    var secondPassed = 0
    @IBAction func hardnessSelection(_ sender: UIButton) {
        progressBar.progress = 0.0
        secondPassed = 0
        timer.invalidate()
        let hardness = sender.currentTitle
        totalSecond = eggTimes[hardness!]!
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        

        
//        if hardness == "Soft" {
//            print(softTime)
//        } else if hardness == "Medium" {
//            print(mediumTime)
//        } else if hardness == "Hard" {
//            print(hardTime)
//        }
//        
//        switch hardness {
//            case "Soft":
//                print(eggTimes["softTime"])
//            case "Medium":
//                print(eggTimes["mediumTime"])
//            case "Hard":
//                print(eggTimes["hardTime"])
//            default :
//                print("None")
//        }
    }
    
    @objc func updateTimer() {
        if secondPassed < totalSecond {
            print(secondPassed)
            secondPassed = secondPassed + 1;
//            let percentageProgress = secondPassed / totalSecond
            progressBar.progress = Float(secondPassed) / Float(totalSecond)
        } else {
            timer.invalidate()
            titleLabel.text = "DONE!"
        }
    }
    
}
