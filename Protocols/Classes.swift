//
//  Classes.swift
//  Protocols
//
//  Created by Talha Saygılı on 19.12.2022.
//

import Foundation

class Car{
    var model: String
    var color: String
    var year: Int
    
    init(model: String, color: String, year: Int) {
        self.model = model
        self.color = color
        self.year = year
    }
    
    func move(){
    }
    
    func stop(){
    }
    
}




class Sedan: Car, canDoAll{
    func crossBridge() {
        print("Crossing a bridge!")
    }
    
    func enterCarPark() {
        print("You Can Enter!")
    }
    
    func enterFerry() {
        print("Welcome! Go Ahead and Park Your Car!")
    }
}

class Van: Car, canCrossBrigde {
    func crossBridge() {
        print("Have a Good Trip!")
    }
}


class Truck: Car{}


