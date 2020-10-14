//
//  ViewController.swift
//  HW3
//
//  Created by Богдан Сивашенко on 12.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        countMonth(savings: 2400, moneyNeed: 1000, studentGrant: 700, percent: 3)
        
    }
    func countMonth(savings: Double, moneyNeed: Double, studentGrant: Double, percent: Double){
        var savings: Double = savings
        var moneyNeeded: Double = moneyNeed
        let studentGrant: Double = studentGrant
        var monthStudentCanExist = 0
        while savings > 0 {
            
            if monthStudentCanExist > 0 {
                moneyNeeded += moneyNeeded * (percent / 100)
            }
            savings -= (moneyNeeded - studentGrant)
            monthStudentCanExist += 1
            print(savings)
            
            
            
        }
        if savings < 0 {
            monthStudentCanExist -= 1
        }
        print("Студент сможет прожить \(monthStudentCanExist) месяцев !")
    }
}

