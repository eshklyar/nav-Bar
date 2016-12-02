//
//  ViewController.swift
//  nav Bar
//
//  Created by Edik Shklyar on 7/9/16.
//  Copyright © 2016 SwiftTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myTime = 0
    var startBtnPressed = false
    var stopBtnPressed = false
    var rewindBtnPressed = false
    var resume = false

    @IBOutlet weak var resultsLabel: UILabel!

    @IBAction func startTimer(_ sender: AnyObject) {
         startBtnPressed = true
         stopBtnPressed = false
         rewindBtnPressed = false
    }

    @IBAction func pauseTimer(_ sender: AnyObject) {

        if stopBtnPressed {
            startBtnPressed = true
            rewindBtnPressed = false

            print(stopBtnPressed)
        } else {
            startBtnPressed = false
            rewindBtnPressed = false
             print(stopBtnPressed)
        }

        stopBtnPressed = !stopBtnPressed
    }

    @IBAction func restartTimer(_ sender: AnyObject) {
        startBtnPressed = false
        stopBtnPressed = false
        rewindBtnPressed = true
    }


    func results() {
        if startBtnPressed {
            myTime += 1
        }
        else if rewindBtnPressed {
            myTime = 0
        }
        resultsLabel.text = String(myTime)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        resultsLabel.text = "0"

        var myTimer = Timer ()
            myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector:#selector(ViewController.results), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

