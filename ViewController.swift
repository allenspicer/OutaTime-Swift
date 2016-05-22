//
//  ViewController.swift
//  OutaTime Swift
//
//  Created by Allen Spicer on 5/12/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit


class ViewController: UIViewController, DatePickerViewControllerDelegate{
    
    @IBOutlet  var destinationTimeLabel: UILabel!
    @IBOutlet  var presentTimeLabel: UILabel!
    @IBOutlet  var lastTimeDepartedLabel: UILabel!
    @IBOutlet  var speedLabel: UILabel!
    @IBOutlet weak var delorean: UIImageView!
    @IBOutlet weak var flashImageView: UIImageView!
    
    
    var takeOffBehavior: UIPushBehavior!
    var speedometerTiming:NSTimer?
    var currentSpeed: NSInteger = 0
    private var animator : UIDynamicAnimator!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "OutaTime Redux"
        animator = UIDynamicAnimator(referenceView: self.view)
        //animator.removeAllBehaviors()

    }


    @IBAction func travelBack(sender: AnyObject) {
        if speedLabel.text == "88"{
            speedLabel.text = "00"
        }
        
        else{
            // have car takeoff with animation
            takeOffBehavior = UIPushBehavior(items: [delorean], mode: .Continuous)
            takeOffBehavior.pushDirection = CGVector(dx: currentSpeed, dy: 0)
            takeOffBehavior.magnitude = 1
        
            animator.addBehavior(takeOffBehavior)
            
            self.startTimer()}
    }
    
    
    func startTimer() {
           speedometerTiming =  NSTimer .scheduledTimerWithTimeInterval(0.1,
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
                flashImageView.backgroundColor = UIColor.whiteColor()
                self.view.addSubview(flashImageView)
                UIView.animateWithDuration(1, animations: {
                    self.flashImageView.alpha = 1.0
                    }, completion: {
                        (finished:Bool) in
                        self.flashImageView.removeFromSuperview()
                })


            lastTimeDepartedLabel.text = presentTimeLabel.text
            presentTimeLabel.text = destinationTimeLabel.text
            currentSpeed = 0
            self.stopTimer()
            }
        }
    }
    
    func getDate(date: NSDate!){
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MMM dd YYYY"
        let dateString = dateFormatter.stringFromDate(date)
        destinationTimeLabel.text = dateString
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "DatePickerSegue"{
        let destination = segue.destinationViewController as! DatePickerViewController
            destination.delegate = self
        }
        
    }
    

}

