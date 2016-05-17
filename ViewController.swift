//
//  ViewController.swift
//  OutaTime Swift
//
//  Created by Allen Spicer on 5/12/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet  var destinationTimeLabel: UILabel!
    @IBOutlet  var presentTimeLabel: UILabel!
    @IBOutlet  var lastTimeDepartedLabel: UILabel!
    @IBOutlet  var speedLabel: UILabel!
    
    var speedometerTiming:NSTimer?
    var currentSpeed: NSInteger = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

   
    @IBAction func unwindDateController(segue:UIStoryboardSegue){
        let i = segue.sourceViewController as! DatePickerViewController
        if i.date != nil{
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MMM dd yyyy"
        let datePicked = i.date
        let dateString = dateFormatter.stringFromDate(datePicked!)
        destinationTimeLabel.text = dateString
        }
    }
    

    
    @IBAction func travelBack(sender: AnyObject) {
        if speedLabel.text == "88"{
            speedLabel.text = "00"
        }
        
        else{
            self.startTimer()}
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

