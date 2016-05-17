//
//  datePickerViewController.swift
//  OutaTime Swift
//
//  Created by Allen Spicer on 5/16/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit

protocol DatePickerViewControllerDelegate {
    func getDate(date: NSDate!)
}


class DatePickerViewController: UIViewController{

var date:NSDate?
var delegate:DatePickerViewControllerDelegate?

    
@IBOutlet weak var datePicker: UIDatePicker!
    
override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.delegate?.getDate(datePicker.date)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
    

    
    





