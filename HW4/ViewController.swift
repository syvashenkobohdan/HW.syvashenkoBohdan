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
        print(makeStr(str: "BohdanSyvashenko"))
    }
    func makeStr(str: String) -> String  {
        
        var counter = 0
        var stringToReturn: String = ""
        var strArray: [Substring] = []
        var str3: String = str
        for chr in str {
            
            if chr.isUppercase , counter != 0 {
                str3.insert(contentsOf: " ", at: str.firstIndex(of: chr)!)
            }
            counter += 1
        }
        
        
        strArray = str3.split(separator: " ")
        stringToReturn = "You're name is \(strArray[0]). \nYou're surname is \(strArray[1]). \nYou're fullname is \(str3)."
        
        return stringToReturn
    }
    
}

