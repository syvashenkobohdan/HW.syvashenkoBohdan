//
//  SwiftRobotControlCenter.swift
//  MyRobot
//
//  Created by Ivan Vasilevich on 10/4/14.
//  Copyright (c) 2014 Ivan Besarab. All rights reserved.
//

import UIKit
//  All robot commands can be founded in GameViewController.h
class SwiftRobotControlCenter: RobotControlCenter {
    
    //  Level name setup
    override func viewDidLoad() {
        levelName = "L666H" //  Level name
        super.viewDidLoad()
    }
    
    override func run() {
        makeZebra(candiesAmount: 2)
    }
    
    func makeCandyLine(candiesAmount: Int) {
        while frontIsClear {
        putCandies(candiesAmount: candiesAmount)
        move()
        }
        putCandies(candiesAmount: candiesAmount)
    }
    
    func goToNextLine() {
        if facingRight {
            turnRight()
            move()
            turnRight()
        }else {
            turnLeft()
            move()
            turnLeft()
        }
    }
    
    func makeEmptyLine() {
        while frontIsClear {
            move()
        }
    }
    
    func makeZebra(candiesAmount: Int) {
        while candyInBag {
            makeCandyLine(candiesAmount: candiesAmount)
            if frontIsBlocked , rightIsBlocked {
                break
            }
            goToNextLine()
            makeEmptyLine()
            if frontIsBlocked , leftIsBlocked{
                break
            }
            goToNextLine()
        }
    }
    
    func putCandies(candiesAmount: Int) {
        for _ in 0..<candiesAmount {
            put()
        }
    }
    
    func turnLeft() {
        for _ in 0..<3 {
            turnRight()
        }
    }
    
    
    
}






