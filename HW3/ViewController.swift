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
      findDividers(number: 10)
    }
    
    func findDividers(number: Int) {
        var counter = 0
        var dividers = 0
        var array: [Int] = []
        for _ in 0..<number {
            counter += 1
            if number % counter == 0 {
                array.append(counter)
                
                dividers += 1
                
            }
            
        }
        let string = array.map { String($0) }
            .joined(separator: ", ")
        
        print("Number \(number) has \(dividers) dividers . They are \(string)")
    }
   
}

