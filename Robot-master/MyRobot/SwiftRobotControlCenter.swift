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
        levelName = "L4H" //  Level name
        super.viewDidLoad()
    }
	
	override func run() {
        for _ in 0...13 {
            firstStep()
            secondStep()
            thirdStep()
            atHeadisCandy()
            backToStart()
        }
	}
    
    func firstStep() {
        if noCandyPresent {
            turnRight()
            move()
            turnLeft()
        }
    }
    
    func secondStep() {
        while noCandyPresent {
            put()
        }
    }
    
    func thirdStep() {
        if candyPresent {
            move()
        }
    }
    
    func atHeadisCandy() {
        if noCandyPresent {
            turnLeft()
            move()
        }
        if noCandyPresent {
            turnRight()
            turnRight()
            move()
            turnRight()
        }
    }
    
    func backToStart() {
        while frontIsClear {
            move()
        }
    }
    
//    var candy: Int = 0
//
//    func isCandyHere() {
//        if candy == 0 {
//            nextStep()
//        }
//    }
//
//    func nextStep() {
//        turnRight()
//        move()
//        turnLeft()
//    }
//
//    func putCandy() {
//        if noCandyPresent {
//            candy += 1
//            put()
//        }
//    }
//
//    func doSomething() {
//        while candy != 13 {
//            putCandy()
//        }
//    }
    
    
    func turnLeft() {
        for _ in 0..<3{
            turnRight()
        }
    }
    
    func doubleMove() {
        move()
        move()
    }
    
}
