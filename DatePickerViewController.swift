//
//  datePickerViewController.swift
//  OutaTime Swift
//
//  Created by Allen Spicer on 5/16/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import Foundation
import UIKit


//must specify type of this delegate to be the protocol

var delegate:DatePickerViewControllerDelegate?


class DatePickerViewController{


    
@IBOutlet weak var datePicker: UIDatePicker!

@IBAction func saveDateFromDatePicker(sender: UIButton) {
    }
    
}