//
//  ViewController.swift
//  OutaTime Swift
//
//  Created by Allen Spicer on 5/12/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit


protocol DatePickerViewControllerDelegate{
    func didPickDate(picker: UIDatePicker)
}

class ViewController: UIViewController, DatePickerViewControllerDelegate{
    
    @IBOutlet  var destinationTimeLabel: UILabel!
    @IBOutlet  var presentTimeLabel: UILabel!
    @IBOutlet  var lastTimeDepartedLabel: UILabel!
    @IBOutlet  var speedLabel: UILabel!
    
    var speedometerTiming:NSTimer?
    var currentSpeed: NSInteger = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //destinationTimeLabel.text = "JAN 01 2000"
        
    }
    
func didPickDate(picker: UIDatePicker){
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MMM dd yyyy"
       let date = picker.date
        let destinationDateString = dateFormatter.stringFromDate(date)
        destinationTimeLabel.text = destinationDateString
    
    }
    
    
    @IBAction func travelBack(sender: AnyObject) {
        self.startTimer()
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

