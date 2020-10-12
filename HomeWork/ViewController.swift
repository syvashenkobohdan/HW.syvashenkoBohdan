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
        drawTarget(amount: 10)
    }
    
    func drawBox(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, color: UIColor, radius: CGFloat) {
        let box = UIView()
        box.backgroundColor = color
        box.frame = CGRect(x: x, y: y, width: width, height: height)
        view.addSubview(box)
        box.layer.cornerRadius = radius
    }
    
    func drawTarget(amount: Int) {
        guard amount > 0 else {
            amountCheck()
            return
        }
        let position: CGFloat = 200
        let size: CGFloat = 400
        var counter = 0
        var color: UIColor = UIColor.red
        var spacing: CGFloat = 0
        var radius: CGFloat = 0
        
        for _ in 0..<amount {
            counter += 1
            spacing += 10
            radius = (size - (spacing * 2)) / 2
            
            if counter % 2 != 0 {
                color = UIColor.red
            }else {
                color = UIColor.green
            }
            
            
            
            drawBox(x: position + spacing, y: position + spacing, width: size - (spacing * 2), height: size - (spacing * 2), color: color, radius: radius)
            
            
        }
    }
    
    func amountCheck() {
        let textBox = UILabel()
        textBox.frame = CGRect(x: 0, y: 100, width: 300, height: 300)
        textBox.text = "Error, input number is less than 0"
        view.addSubview(textBox)
        
    }
   
}


