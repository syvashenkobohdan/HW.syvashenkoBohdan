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
        levelName = "L55H" //  Level name
        super.viewDidLoad()
    }
    
    override func run() {
        buildPyramid(number: 3)
    }
    
    
    func saveMove() {
        if frontIsClear{
            move()
        }
    }
    
    func turnLeft() {
        turnRight()
        turnRight()
        turnRight()
    }
    
    func reversal() {
        turnLeft()
        turnLeft()
    }
    
    func goToStartPosition() {
        faceUp()
        frontMove()
        if frontIsBlocked , leftIsClear {
            turnLeft()
            frontMove()
            turnRight()
        }
        reversal()
        saveMove()
    }
    
    func faceUp() {
        while !facingUp{
            turnRight()
        }
    }
    
    func goToNext() {
        reversal()
        frontMove()
        turnLeft()
        saveMove()
        turnLeft()
    }
    
    func buildPyramid(number: Int) {
        goToStartPosition()
        var height = countHeight()
        turnLeft()
        for i in 1...number {
            if i == height + 1 {
                break
            }
            
            for _ in 0..<i {
                put()
                saveMove()
                
            }
            goToNext()
        }
    }
    
    func frontMove() {
        while frontIsClear {
            move()
        }
    }
    
    func countHeight() -> Int {
        var height = 0
        while frontIsClear {
            move()
            height += 1
        }
        reversal()
        for _ in 0..<height{
            saveMove()
        }
        reversal()
        return height
    }
}






