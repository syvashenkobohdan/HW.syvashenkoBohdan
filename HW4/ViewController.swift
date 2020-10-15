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
       print(check(name: "Владимиро"))
    }
    func check(name: String) -> String {
        var suffixIch: Bool = false
        var suffixNa: Bool = false
        suffixIch = name.hasSuffix("ич")
        suffixNa = name.hasSuffix("на")
        
        if suffixIch {
            return "You're name \(name) has suffix (ич)"
        }else if suffixNa {
            return "You're name \(name) has suffix (на)"
        }else {
            return "You're name has no suffix"
        }
    }

}

