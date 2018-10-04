//
//  ViewController.swift
//  CalculateAge
//
//  Created by Salwa Hegazy on 7/8/18.
//  Copyright © 2018 Salwa Hegazy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var laDisplay: UILabel!
    @IBOutlet weak var DatePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buGetAge(_ sender: Any) {
        
        let CurrentDate = Date()
        let UserBirthdayDate = DatePicker.date
        let Calender = Calendar.current
        let component = Calender.dateComponents( [Calendar.Component.day] , from:UserBirthdayDate , to:CurrentDate )
        var Years :Int = Int (component.day! / 356)
        var Months :Int = (component.day! - (Years * 356))/30
        var Days : Int = component.day! - ((Months*30) + (Years*356))
        
        laDisplay.text = "Age  = \(Years)Years , \(Months)Months , \(Days)Days"
    }

}

