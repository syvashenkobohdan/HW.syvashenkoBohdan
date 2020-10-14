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
       returnReversed(variable: 54)
    }
    func returnReversed(variable: Int){
        
        let myStr: String = String(variable)
        let reversedInt = Int(String(myStr.reversed())) ?? 0
        print("Перевернув число \(variable) получим число \(reversedInt)")
    }

}

