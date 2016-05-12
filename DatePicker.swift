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
}

