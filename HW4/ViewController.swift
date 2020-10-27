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
        print(sorter(array: [9, 2, 6, 1, 3, 5, 1, 2]))
    }
    
    func sorter(array: [Int]) -> [Int] {
        var sortedArray = array
        var dublicateErased = [Int]()
        
        
        for firstIndex in 0..<array.count {
            let passes = (sortedArray.count - 1) - firstIndex
            
            
            for secondIndex in 0..<passes {
                let key = sortedArray[secondIndex]
                
                
                if (key > sortedArray[secondIndex + 1]) {
                    sortedArray.swapAt(secondIndex, secondIndex + 1)
                }
            }
        }
        
        
        for value in sortedArray {
            if dublicateErased.contains(value) == false {
                dublicateErased.append(value)
            }
        }
        
        return dublicateErased
        
    }
    
    
}


