//
//  main.swift
//  typealias
//
//  Created by Talha Saygili on 25.12.2022.
//

import Foundation



// Setting alias to existing types



//  BUILT-IN TYPES


// After assigning,
/*
    myString -  String
    myInt    -  Int
    myChar   -  Character
    myFloat  -  Float
    myDouble -  Double
 
 can be used instead of themselves.
 
 */
typealias myString = String
typealias myInt = Int
typealias myChar = Character
typealias myFloat = Float
typealias myDouble = Double


var name: myString = "Jack"
print(type(of: name))
// String

var age: myInt = 25
print(type(of: age))
// Int



//  USER-DEFINED TYPES

class Car{
    var name: String
    var color: String
    
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
}

struct Driver{
    var name: String
}

// Create Typealias
typealias CarList = Array<Car>
typealias DriverList = Array<Driver>

// Assigning Typealias to variables
var cars: CarList = []
var drivers: DriverList = []

// Create Car Object
var car1 = Car(name: "BMW", color: "White")
var car2 = Car(name: "Mercedes", color: "Red")

//cars.append(newElement: Car)
cars.append(car1)
cars.append(car2)

for item in cars{
    print("Car Name: \(item.name)\nCar Color: \(item.color)")
}
/*
     Car Name: BMW
     Car Color: White
     Car Name: Mercedes
     Car Color: Red
 */


// Create Driver Object
var driver1 = Driver(name: "Alex")
var driver2 = Driver(name: "Susan")

//drivers.append(newElement: Driver)
drivers.append(driver1)
drivers.append(driver2)

for item in drivers{
    print("Driver Name: \(item.name)")
}

/*
     Driver Name: Alex
     Driver Name: Susan
 */


// COMPLEX TYPES

// Alias to function type
typealias functionType = (Int, Int) -> Bool

func greaterThan(a: Int, b: Int) -> Bool{
        return a > b
}

print(greaterThan(a: 5, b: 3))
// true

// Use typealias as type to myFunc
var myFunc: functionType = greaterThan

print(myFunc(5,3))
// true
