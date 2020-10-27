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
        print(antimat(mat: "Hello fuck"))
    }
    
    func antimat(mat: String) -> String {
        var mats = ["fuck", "fak"]
        var antimate = ""
        
        for i in mats {
            if mat.contains(i) {
                antimate = mat.replacingOccurrences(of: i, with: "***")
            }
        }
        return antimate
        
    }
    
    
}


