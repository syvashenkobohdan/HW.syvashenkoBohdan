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
        print(calcStuff(number: "231231"))
    }
    
    func calcStuff(number: String) -> String {
        var start = number
        var counter = start.count
        for _ in start {
            counter -= 1
            if counter % 3 == 0 , counter != 0 {
                start.insert(",", at: start.index(start.endIndex, offsetBy: -counter))
            }
        }
        return start

}
    
    
}


