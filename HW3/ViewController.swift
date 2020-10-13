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
       countMoney(grant: 700, moneyNeeded: 1000, percent: 3, studentYear: 10)
        
        
      
    }
    
    func countMoney(grant: Double, moneyNeeded: Double, percent: Double, studentYear: Int) {
        
        var moneyNeeded = moneyNeeded
        var money = 0.0
        var moneyNotEnought = 0.0
        
        for i in 0..<studentYear {
            if i > 0 {
            moneyNeeded += moneyNeeded * (percent / 100)
            }
            money += moneyNeeded
            
            
        }
        moneyNotEnought = money - (grant * Double(studentYear))
        print("Всего студенту нужно \(String(format: "%.1f", money)) грн. в год . Учитывая стипендию на жизнь студенту в год не хватает \(String(format: "%.1f", moneyNotEnought)) грн.")
    }
   

}

