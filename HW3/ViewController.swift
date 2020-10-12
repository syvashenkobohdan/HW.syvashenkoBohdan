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
      biggerNumber(a: 5, b: 6)
    }
    func biggerNumber(a: Int, b: Int) {
        if a > b {
            print(a)
        }else if a == b {
            print("Same numbers")
        }else {
            print(b)
        }
    }

}

