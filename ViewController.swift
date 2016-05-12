//
//  ViewController.swift
//  OutaTime Swift
//
//  Created by Allen Spicer on 5/12/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit


class ViewController: UIViewController, DatePickerDelegate {

    @IBOutlet weak var destinationTimeLabel: UILabel!
    @IBOutlet weak var presentTimeLabel: UILabel!
    @IBOutlet weak var lastTimeDepartedLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    
    @IBAction func travelBack(sender: AnyObject) {
        self.startTimer()
    }
    
    var timer:NSTimer?
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func destinationDateWasChosen(destinationDate:NSDate){
        let destinationDateString = String(destinationDate)
        destinationTimeLabel.text = destinationDateString
    }
    
    func startTimer() {
           timer =  NSTimer .scheduledTimerWithTimeInterval(0.01,
                    target: self,
                    selector: Selector(updateSpeed()),
                    userInfo: nil,
                    repeats: true)
    }
    
    func stopTimer (){
        timer?.invalidate()
      //make timer empty
    }
    
    func updateSpeed (){
        
        
        
    }


     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "ShowDestinationDatePickerSegue"){
        let destinationViewController:DatePicker = segue.destinationViewController as! DatePicker
        destinationViewController.delegate = self
        }
    }

}

