//
//  ViewController.swift
//  OutaTime Swift
//
//  Created by Allen Spicer on 5/12/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var destinationTimeLabel: UILabel!
    @IBOutlet weak var presentTimeLabel: UILabel!
    @IBOutlet weak var lastTimeDepartedLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    @IBAction func travelBack(sender: AnyObject) {
        self.startTimer()
    }
    
    @IBAction func setDestinationTime(sender: UIButton) {

    if datePicker != nil {
        let dateFormatter = NSDateFormatter()
        let date = datePicker.date
        let destinationDateString = dateFormatter.stringFromDate(date)
        destinationTimeLabel.text = destinationDateString
        }
    }
    var speedometerTiming:NSTimer?
    var currentSpeed: NSInteger = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    
    func startTimer() {
           speedometerTiming =  NSTimer .scheduledTimerWithTimeInterval(0.01,
                    target: self,
                    selector: #selector(updateSpeed),
                    userInfo: nil,
                    repeats: true)

    }
    
    func stopTimer (){
        speedometerTiming?.invalidate()
      //make timer empty
    }
    
    func updateSpeed (){
        if (currentSpeed != 88){
        currentSpeed += 1
        speedLabel.text = String(currentSpeed)
        }else{
            
            if(currentSpeed >= 88){
            lastTimeDepartedLabel.text = presentTimeLabel.text
            presentTimeLabel.text = destinationTimeLabel.text
            currentSpeed = 0
            self.stopTimer()
            }
        }
    }

}

