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
       print(countSymbols(name: "Bohdan"))
    }
    func countSymbols(name: String) -> Int {
        return name.count
    }

}

