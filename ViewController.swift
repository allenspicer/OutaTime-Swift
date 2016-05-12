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
    
    
    var timer:NSTimer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func destinationDateWasChosen(sender: DatePicker){
    
    }
    
    @IBAction func travelBack(sender: AnyObject) {
        //self.startTimer
    }
    
    func startTimer() {
    
//        if let (speedometerTiming){
//        }else{
           timer =  NSTimer .scheduledTimerWithTimeInterval(0.01,
                                                    target: self,
                                                    selector: Selector(updateSpeed()),
                                                    userInfo: nil,
                                                    repeats: true)
    }
    
    func stopTimer (){
        
        
        
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

