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
        print(returnReversed(input: "Ось"))
    }
    
    func returnReversed(input: String) -> String {
        var reversedStr: String = ""
        
        for chr in input {
            reversedStr.insert(chr, at: reversedStr.startIndex)
            
        }
        return "Если перевернуть строку \(input) получим строку \(reversedStr)"
    }
    
    
}


