//
//  DatePicker.swift
//  OutaTime Swift
//
//  Created by Allen Spicer on 5/12/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import Foundation
import UIKit


class DatePickerViewController:UIViewController{
    
@IBOutlet weak var datePicker: UIDatePicker!
    

    
   func viewWillDisappear(sender: DatePickerViewController) {
        super.viewWillDisappear(true)
  //  let destinationDate: NSDate = datePicker.date
    
       // DatePickerDelegate.destinationDateWasChosen(self) = datePicker.date

}
    
}
    
//what I would like to do:
//    destinationDateWasChosen(datePicker) = DatePickerDelegate
    
    
    
    
//var delegate:DatePickerDelegate? = DatePicker
//DatePickerDelegate.destinationDateWasChosen()
    
    
    

    
    

