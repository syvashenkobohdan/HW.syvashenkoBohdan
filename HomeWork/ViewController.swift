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
        
        makeColumn(amount: 10)
        
    }
    
    let horizontalSpacing: CGFloat = 10
    let boxSize: CGFloat = 50
    let verticalLocation: CGFloat = 500
    var horizontalLocation: CGFloat = 10
    
    func drawBox(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) {
        let box = UIView()
        box.backgroundColor = UIColor.black
        box.frame = CGRect(x: x, y: y, width: width, height: height)
        view.addSubview(box)
    }
    
    func makeColumn(amount: Int) {
        
        if amount < 0 {
            amountCheck()
        }else {
            for _ in 0..<amount {
                drawBox(x: horizontalLocation, y: verticalLocation, width: boxSize, height: boxSize)
                horizontalLocation += boxSize + horizontalSpacing
            }
        }
    }
    
    func amountCheck() {
        let textBox = UITextField()
        textBox.frame = CGRect(x: 0, y: 100, width: 300, height: 300)
        textBox.text = "Error, Amount number is less than 0"
        view.addSubview(textBox)
        
    }
    
}
