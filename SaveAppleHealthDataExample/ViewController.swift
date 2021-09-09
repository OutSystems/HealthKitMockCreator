//
//  ViewController.swift
//  SaveAppleHealthDataExample
//
//  Created by Domo on 03/12/2019.
//  Copyright © 2019 Domo. All rights reserved.
//

import UIKit
import HealthKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldValue: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        HealthKitSetupAssistant.authorizeHealthKit { (result, error) in
            if result {
                print("Auth ok")
            } else {
                print("Auth denied")
            }
        }
        
    }
    
    @IBAction func save4000StepsToday(_ sender: Any) {
        let value = String(Int.random(in: 1...4000))
        let today = Date()
        
        HealthKitSetupAssistant.saveSteps(stepsCountValue: Int(value)!, date: today) { (error) in
            print(error)
        }
        
    }
    
    @IBAction func save8000StepsToday(_ sender: Any) {
        let value = String(Int.random(in: 4000...8000))
        let today = Date()
        
        HealthKitSetupAssistant.saveSteps(stepsCountValue: Int(value)!, date: today) { (error) in
            print(error)
        }
        
    }
    
    @IBAction func saveManyStepsToday(_ sender: Any) {
        let value = String(Int.random(in: 9000...20000))
        let today = Date()
        
        HealthKitSetupAssistant.saveSteps(stepsCountValue: Int(value)!, date: today) { (error) in
            print(error)
        }
        
    }
}
