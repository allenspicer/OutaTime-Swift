//
//  ViewController.swift
//  OutaTime Swift
//
//  Created by Allen Spicer on 5/12/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit

protocol DatePickerDelegate {
    func destinationDateWasChosen(destinationDate:NSDate)}

class ViewController: UIViewController, DatePickerDelegate {
    
    
    @IBOutlet weak var destinationTimeLabel: UILabel!
    @IBOutlet weak var presentTimeLabel: UILabel!
    @IBOutlet weak var lastTimeDepartedLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    
    @IBAction func travelBack(sender: AnyObject) {
        self.startTimer()
    }
    
    var speedometerTiming:NSTimer?
//    var dateFormatter:NSDateFormatter
    var currentSpeed: NSInteger = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func destinationDateWasChosen(destinationDate:NSDate){
        let destinationDateString = String(destinationDate)
        destinationTimeLabel.text = destinationDateString
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

     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "ShowDestinationDatePickerSegue"){
        let destinationViewController:DatePicker = segue.destinationViewController as! DatePicker
        destinationViewController.delegate = self
        }
    }

}

