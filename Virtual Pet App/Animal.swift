//
//  Animal.swift
//  Virtual Pet App
//
//  Created by Minh Do on 9/18/19.
//  Copyright © 2019 Minh Do. All rights reserved.
//

import UIKit
import Foundation

public class Animal {
    var timePlayed:Int = 0;
    var timeFed:Int = 0;
    var happiness:Int = 0;
    var foodLevel:Int = 0;
    var image:UIImage! = UIImage(named:"dog");
    var color:UIColor = UIColor.red;
    
    func play() {
        if (self.foodLevel > 0) {
            self.foodLevel -= 1;
            self.timePlayed += 1;
            if (self.happiness < 10) {
                self.happiness += 1;
            }
        }
    }
    
    func feed() {
        if (self.foodLevel < 10) {
            self.foodLevel += 1;
            self.timeFed += 1;
        }
    }
    
    func toDog() {
        self.image = UIImage(named: "dog")
        self.color = UIColor.red;
    }
    
    func toCat() {
        self.image = UIImage(named: "cat")
        self.color = UIColor.blue;
    }
    
    func toBird() {
        self.image = UIImage(named: "bird")
        self.color = UIColor.yellow;
    }
    
    func toBunny() {
        self.image = UIImage(named: "bunny")
        self.color = UIColor.green;
    }
    
    func toFish() {
        self.image = UIImage(named: "fish")
        self.color = UIColor.purple;
    }
}
