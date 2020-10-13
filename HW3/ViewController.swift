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
        moneyCount(year: 1826, money: 24, percent: 6)
        
        
      
    }
    
    
    func moneyCount(year: Int, money: Double, percent: Double) {
        let currentYear = 2020
        var money = money
        var currentMoney = 0.0
        var fullMoney = 0
        var coins = 0
        
        for _ in year..<currentYear {
            money += (money * (percent / 100))
            
        }
       
        currentMoney = Double(String(format: "%.2f", money)) ?? 0.0
        fullMoney = Int(String(format: "%.f", currentMoney)) ?? 0
        coins = Int((currentMoney - Double(fullMoney)) * 100)
        print("На данный момент состояние поселенцев составляло бы \(fullMoney)$ и \(coins) центов")
       
    }

}

