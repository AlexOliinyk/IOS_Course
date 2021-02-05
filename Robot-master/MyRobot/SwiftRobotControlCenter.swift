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
       
	}
    
    
    
    
//    func createX() {
//        while frontIsClear {
//            put()
//            move()
//            turnRight()
//            move()
//            if frontIsBlocked, noCandyPresent {
//                put()
//                break
//            }
//            turnLeft()
//        }
//    }
//
//    func turnToNext() {
//        while facingDown {
//            turnRight()
//            turnRight()
//        }
//        while frontIsClear {
//            move()
//            if frontIsBlocked {
//                break
//            }
//        }
//    }
//
//    func createX2() {
//        if frontIsBlocked {
//            turnLeft()
//        }
//        while frontIsClear {
//            put()
//            move()
//            turnLeft()
//            move()
//            turnRight()
//            if frontIsBlocked, noCandyPresent {
//                put()
//                break
//            }
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
