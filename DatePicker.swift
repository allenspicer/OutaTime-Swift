//
//  DatePicker.swift
//  OutaTime Swift
//
//  Created by Allen Spicer on 5/12/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import Foundation
import UIKit


protocol DatePickerDelegate {
        func destinationDateWasChosen(destinationDate:NSDate)
}


class DatePicker:UIViewController{
    
 var delegate:DatePickerDelegate?

//
//    @IBOutlet weak var datePicker: UIDatePicker!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//    
//    override func viewWillDisappear(animated:Bool){
//        super.viewWillDisappear.animated()
//
//            delegate?.destinationDateWasChosen(self.datePicker.date)
//        
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    
}




//
//@interface DatePickerViewController : UIViewController
//
//@property (strong, nonatomic) id<TimeCircuitsDatePickerDelegate> delegate;
//
//@end
//




//
//
//#import "DatePickerViewController.h"
//
//@interface DatePickerViewController ()
//
//@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
//
//@end
//
//@implementation DatePickerViewController
//
//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//    // Do any additional setup after loading the view.
//    }
//    
//    - (void)viewWillDisappear:(BOOL)animated
//{
//    [super viewWillDisappear:animated];
//    //
//    // 11. We need to call a method to tell the delegate that a destination date was chosen and pass the date from the
//    //    datePicker object.
//    //
//    [self.delegate destinationDateWasChosen:self.datePicker.date];
//    }
//    
//    - (void)didReceiveMemoryWarning
//        {
//            [super didReceiveMemoryWarning];
//            // Dispose of any resources that can be recreated.
//}
//
//@end
//

///Master View implementation

//
//#import "TimeCircuitsViewController.h"
//#import "DatePickerViewController.h"
//
//@interface TimeCircuitsViewController () <TimeCircuitsDatePickerDelegate>
//{
//    //
//    // 1. We need three variables to hold various info.
//    //    One should be an NSTimer object to use when counting up the speedometer label.
//    //    Another should be an NSDateFormatter object to use to format the dates for the time circuit readouts.
//    //    The last is an NSInteger object to hold the current speed of the DeLorean.
//    //
//    
//    NSTimer * speedometerTiming;
//    NSDateFormatter * dateFormatter;
//    NSInteger currentSpeed;
//}
//
//// These are the properties that will be wired up to the labels in the storyboard. If the circles to the left of them are hollow, they have not been connected in the storyboard.
//@property (weak, nonatomic) IBOutlet UILabel *destinationTimeLabel;
//@property (weak, nonatomic) IBOutlet UILabel *lastTimeDepartedLabel;
//@property (weak, nonatomic) IBOutlet UILabel *presentTimeLabel;
//@property (weak, nonatomic) IBOutlet UILabel *speedLabel;
//
//// This is an IBAction. It is a method that will fire when the element it's connected to fires an event of your choosing.
//- (IBAction)travelBack:(UIButton *)sender;
//
//// These are private custom methods
//- (void)startTimer;
//- (void)stopTimer;
//- (void)updateSpeed;
//
//@end
//
//@implementation TimeCircuitsViewController
//
//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//    
//    //
//    // 2. The view should be titled "Time Circuits"
//    //
//    self.title = @"Time Circuits";
//    //
//    // 3. This is a good place to initialize the objects that will be used later on.
//    //    The date formatter object you created above need to be instantiated.
//    //
//    speedometerTiming = [[NSTimer alloc ]init];
//    dateFormatter = [[NSDateFormatter alloc ]init];
//    
//    
//    
//    //
//    // 4. Once created, the formatString you see below needs to be set as the date formatter's dateFormat
//    //
//    NSString *formatString = [NSDateFormatter dateFormatFromTemplate:@"MMMddyyyy"
//    options:0
//    locale:[NSLocale currentLocale]];
//    
//    [dateFormatter setDateFormat:formatString];
//    
//    
//    //
//    // 5. The presentTimeLabel needs to be set to today's date. Use the dateFormatter object to do this.
//    //
//    
//    NSDate * date = [NSDate date];
//    self.presentTimeLabel.text = [dateFormatter stringFromDate:date];
//    
//    //
//    // 6. The currentSpeed integer object needs to be set to 0 to start.
//    //
//    currentSpeed = 0;
//    
//    //
//    // 7. The speedLabel should be set to "% MPH", with the % being the current speed
//    //
//    
//    self.speedLabel.text = [NSString stringWithFormat:@"%li MPH", (long)currentSpeed];
//    
//    
//    
//    //
//    // 8. The lastTimeDeparted label needs to be set to "--- -- ----"
//    //
//    
//    self.lastTimeDepartedLabel.text = @"--- -- ----";
//    
//    }
//    
//    - (void)didReceiveMemoryWarning
//        {
//            [super didReceiveMemoryWarning];
//            // Dispose of any resources that can be recreated.
//}
//
//#pragma mark - Navigation
//
//// In a storyboard-based application, you will often want to do a little preparation before navigation





/*
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"ShowDestinationDatePickerSegue"])
    {
        DatePickerViewController *timePickerVC = (DatePickerViewController *)[segue destinationViewController];
        //
        // This part is done:
        
        DatePicker.delegate = self;
    }
}
*/





//
//#pragma mark - TimeCircuitsDatePickerDelegate
//
//- (void)destinationDateWasChosen:(NSDate *)destinationDate
//{
//    //
//    // 12. The destinationTimeLabel needs to be set to the destination date using our date formatter object
//    //
//    
//    self.destinationTimeLabel.text = [dateFormatter stringFromDate:destinationDate];
//}
//
//#pragma mark - Action Handlers
//
//- (IBAction)travelBack:(UIButton *)sender
//{
//    //
//    // 13. This is where we will start counting the speedometer up to 88 MPH. We need to use the timer object to do that. Is
//    //    there a method defined that will allow us to get the timer started?
//    //
//    
//    [self startTimer];
//    
//}
//
//#pragma mark - Private
//
//- (void)startTimer
//{
//    //
//    // 14. We need to check that the timer object isn't running, and the best way to do that is just to check if the timer
//    //    object has been instantiated, or in this case, NOT instantiated.
//    //
//    //    NOTE: !NO below is just a placeholder.
//    //
//    if (!speedometerTiming)
//    {
//        //
//        // 15. Below is an example of a timer being instantiated with a particular interval and firing a particular
//        //    method each time the time interval has elapsed. Use this to instantiate your timer for 0.1 sec intervals. It
//        //    will need to fire our custom method to update the speed label.
//        //
//        
//        speedometerTiming = [NSTimer scheduledTimerWithTimeInterval:.01
//            target:self                                                   selector:@selector(updateSpeed)
//        userInfo:nil
//        repeats:YES];
//        
//    }
//    }
//    
//    - (void)stopTimer
//        {
//            //
//            // 16. We need to stop the timer object here. The method to call is called "invalidate".
//            //    Once it's stopped, we want to nil out the object so we can create a new one when the user asks to travel back
//            //    again.
//            //
//            [speedometerTiming invalidate];
//            speedometerTiming = nil;
//            
//        }
//        
//        - (void)updateSpeed
//            {
//                //
//                // 17. We need to check if the current speed variable is set to 88 yet.
//                //
//                if (currentSpeed != 88)
//                {
//                    //
//                    // 18. If it's not yet set to 88, we want to increment the current speed variable by 1.
//                    //
//                    currentSpeed +=1 ;
//                    
//                    //
//                    // 19. Here we want to update the speed label to reflect the current speed.
//                    //
//                    
//                    [self.speedLabel setText:[NSString stringWithFormat:@"%ld", (long)currentSpeed]];
//                }
//                else
//                {
//                    //
//                    // 20. If the speed variable is at least 88, we want to stop the timer here.
//                    //
//                    if (currentSpeed >= 88){
//                        //
//                        // 21. Then we need to update the lastTimeDepartedLabel with the value of the presentTimeLabel.
//                        //
//                        self.lastTimeDepartedLabel.text = self.presentTimeLabel.text;
//                        
//                        //
//                        // 22. The presentTimeLabel needs to take the value of the destinationTimeLabel here.
//                        //
//                        self.presentTimeLabel.text = self.destinationTimeLabel.text;
//                        //
//                        // 23. Lastly, we need to reset the current speed label to 0 here.
//                        //
//                        currentSpeed = 0;
//                        
//                        [self stopTimer];
//                        
//                    }
//                }
//}
//
//@end




