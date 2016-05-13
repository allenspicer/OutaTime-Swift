//
//  DatePicker.swift
//  OutaTime Swift
//
//  Created by Allen Spicer on 5/12/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import Foundation
import UIKit


class DatePicker:UIViewController{
    
@IBOutlet weak var datePicker: UIDatePicker!
    
override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(true)
    
       // DatePickerDelegate.destinationDateWasChosen(self) = datePicker.date

    
}
}
    
//what I would like to do:
//    destinationDateWasChosen(datePicker) = DatePickerDelegate
    
    
    
    
//var delegate:DatePickerDelegate? = DatePicker
//DatePickerDelegate.destinationDateWasChosen()
    
    
    

    
    

