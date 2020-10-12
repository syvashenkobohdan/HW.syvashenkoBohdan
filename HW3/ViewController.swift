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
        findDividers(number: 6)
    }
    
    func findDividers(number: Int) {
        var counter = 0
        var dividers = 0
        var ideal = 0
        var array: [Int] = []
        for _ in 0..<number {
            counter += 1
            if number % counter == 0 {
                array.append(counter)
                if counter != number {
                    ideal += counter
                }
                dividers += 1
                
            }
            
        }
        let string = array.map { String($0) }
            .joined(separator: ", ")
        if number % ideal == 0 {
            print("Number \(number) is ideal number and has \(dividers) dividers . They are \(string).")
        }else {
            print("Number \(number) is not ideal number and has \(dividers) dividers . They are \(string).")
        }
        
    }
    
}

