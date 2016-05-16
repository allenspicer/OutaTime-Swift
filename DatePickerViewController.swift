//
//  datePickerViewController.swift
//  OutaTime Swift
//
//  Created by Allen Spicer on 5/16/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import Foundation
import UIKit

class DatePickerViewController: UIViewController{

var delegate:DatePickerViewControllerDelegate?

@IBOutlet weak var datePicker: UIDatePicker!
    
func didPickDate(date: String) -> String{
    let datePicked = datePicker.date
    let dateFormatter = NSDateFormatter()
    dateFormatter.dateFormat = "MMM dd yyyy"
    let dateInDateFormat = datePicked
    let date = dateFormatter.stringFromDate(dateInDateFormat)
        return date
    }
    
    
    
@IBAction func saveDateFromDatePicker(sender: UIButton) {
    
    
    
    
    
    
    }
    
}
    

    
    





