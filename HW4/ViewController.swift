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
        print( search(suff: "da"))
    }
    
    func search(suff: String) -> [String]{
        var array = ["Lada", "Sedan", "Baklazhan"]
        var newArray = [String]()
        
        for i in array {
            
            if i.contains(suff) {
                newArray.append(i)            }
            
            
        }
        return newArray
    }
    
    
}


