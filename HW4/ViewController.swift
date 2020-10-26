//
//  ViewController.swift
//  HW4
//
//  Created by Богдан Сивашенко on 15.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(passwordCheck(password: "asda1231"))
    }
    
    func passwordCheck(password: String) -> String {
        var score: Int = 5
        var checks: [String: Bool] = ["isNumber": false, "isLetter": false, "isSymbol": false, "isUppercase": false, "isLowercase": false]
        var returnString: String = ""
        
        for chr in password {
            if chr.isNumber {
                checks["isNumber"]  = true
            } else if chr.isLetter, chr.isUppercase {
                checks["isLetter"] = true
                checks["isUppercase"] = true
            } else if chr.isLetter, chr.isLowercase {
                checks["isLetter"] = true
                checks["isLowercase"] = true
            } else if chr.isPunctuation || chr.isSymbol {
                checks["isSymbol"] = true
            }
            
        }
        
        if password != "" {
            
            if !checks["isLowercase"]! {
                returnString += "Missing lowercased symbols\n"
                score -= 1
            }
            if !checks["isUppercase"]! {
                returnString += "Missing uppercased symbols\n"
                score -= 1
            }
            if !checks["isSymbol"]! {
                returnString += "Missing special symbols\n"
                score -= 1
            }
            if !checks["isNumber"]! {
                returnString += "Missing numbers\n"
                score -= 1
            }
            if !checks["isLetter"]! {
                returnString += "Missing letters\n"
                score -= 1
            }
            
            returnString += "\nPassword Score: \(score)"
            
        } else {
            return "Please enter password"
        }
        
        return returnString
    }
    
    
    
}


