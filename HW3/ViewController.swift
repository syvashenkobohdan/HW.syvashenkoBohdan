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
      power(a: 6)
    }
    func power(a: Int) {
        print(Int(pow(Double(a),Double(2))))
        print(Int(pow(Double(a),Double(3))))
    }

}

