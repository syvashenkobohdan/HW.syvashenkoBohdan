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
      numberList(number: 5)
    }
    
    func numberList(number: Int) {
        var counter = 0
        for _ in 0..<number {
            print(counter)
            counter += 1
        }
        for _ in 0..<number {
            counter -= 1
            print(counter)
            
        }
    }
}

