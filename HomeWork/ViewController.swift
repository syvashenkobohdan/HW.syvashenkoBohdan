//
//  ViewController.swift
//  HW.syvahenkoBohdan
//
//  Created by Богдан Сивашенко on 10.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeStairs(amount: 10)
    }
    
    let spacing: CGFloat = 10
    let boxSize: CGFloat = 50
    var verticalLocation: CGFloat = 800
    var horizontalLocation: CGFloat = 50
    let startHorizontalLocation: CGFloat = 50
    
    
    func drawBox(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) {
        let box = UIView()
        box.backgroundColor = UIColor.black
        box.frame = CGRect(x: x, y: y, width: width, height: height)
        view.addSubview(box)
    }
    
    func makeColumn(amount: Int) {
        
        for _ in 0..<amount {
            drawBox(x: horizontalLocation, y: verticalLocation, width: boxSize, height: boxSize)
            
            horizontalLocation += boxSize + spacing
        }
    }
    
    func makeStairs(amount: Int) {
        var counter = amount
        guard amount > 0 else {
            amountCheck()
            return
        }
        for _ in 0..<amount {
            
            makeColumn(amount: counter)
            counter -= 1
            verticalLocation -= boxSize + spacing
            horizontalLocation = startHorizontalLocation
        }
        
    }
    
    func amountCheck() {
        let textBox = UILabel()
        textBox.frame = CGRect(x: 0, y: 100, width: 300, height: 300)
        textBox.text = "Error, input number is less than 0"
        view.addSubview(textBox)
        
    }
    
}





