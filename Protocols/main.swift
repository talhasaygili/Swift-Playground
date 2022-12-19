//
//  main.swift
//  Protocols
//
//  Created by Talha Saygılı on 19.12.2022.
//



var mySedan = Sedan(model: "BMW M340i xDrive", color: "White", year: 2022)

mySedan.crossBridge()
mySedan.enterFerry()
mySedan.enterCarPark()


var myVan = Van(model: "Mercedes-Benz Sprinter", color: "Black", year: 2020)

myVan.crossBridge()
//myVan.enterFerry()      // Error: 'Van' has no member 'enterFerry'
//myVan.enterCarPark()    // Error: 'Van' has no member 'enterCarPark'

var myTruck = Truck(model: "Volvo FH16", color: "Black", year: 2022)

//myTruck.crossBridge()   // Error: 'Truck' has no member 'crossBridge'
//myTruck.enterFerry()    // Error: 'Truck' has no member 'enterFerry'
//myTruck.enterCarPark()  // Error: 'Truck' has no member 'enterCarPark'


