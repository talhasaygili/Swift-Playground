//
//  main.swift
//  Optional and Unwrapping
//
//  Created by Talha Saygili on 9.01.2023.
//



// Standard Int Assignment

var someValue: Int = 15
print(someValue)
// 15
print(type(of: someValue))
// Int


// Optional Int Assignment
var optionalValue: Int?
print(optionalValue)
// nil
print(type(of: optionalValue))
// Optional<Int>

// ****************************************************************************

// var howMany: Int = optionalValue
// ERROR: Value of optional type 'Int?' must be unwrapped to a value of type 'Int'

optionalValue = 5
print(optionalValue)
// Optional(5). NOT Int


// var howMany: Int = optionalValue
// ERROR: Value of optional type 'Int?' must be unwrapped to a value of type 'Int'


// ****************************************************************************

// UNWRAPPING
/*
 1- Forced Unwrapped
 2- Optional Handling
    a- If Statement
    b- Optional Binding
    c- Guard Statement
    d- Nil-Coalescing Operator
 */

// ****************************************************************************

// 1- Forced Unwrapped
/*
    var howMany: Int = optionalValue!

    for _ in 0..<howMany{
        print("Hello World!")
    }
 
     // Hello World!
     // Hello World!
     // Hello World!
     // Hello World!
     // Hello World!
*/

// ****************************************************************************

// 2- Optional Handling

// a- If Statement
/*
    if optionalValue != nil{
        var howMany: Int = optionalValue!
        
        for _ in 0..<howMany{
            print("Hello World!")
        }
    }else{
        print("Optional Value is nil.")
    }

    // Hello World!
    // Hello World!
    // Hello World!
    // Hello World!
    // Hello World!
*/

// ****************************************************************************

// b- Optional Binding
/*
    if let howMany = optionalValue{
        for _ in 0..<howMany{
            print("Hello World!")
        }
    }else{
        print("Optinal Value is nil")
    }
    
    // Hello World!
    // Hello World!
    // Hello World!
    // Hello World!
    // Hello World!
*/

// ****************************************************************************

// c- Guard Statement
/*
    func testGuard(optionalValue: Int?){
        guard let howMany = optionalValue else{
            print("Optional Value is nil")
            return
        }
        for _ in 0..<howMany{
            print("Hello World!")
        }
    }

    testGuard(optionalValue: optionalValue)
    // Hello World!
    // Hello World!
    // Hello World!
    // Hello World!
    // Hello World!

    var secondOptional: Int?
    testGuard(optionalValue: secondOptional)
    // Optional Value is nil

*/

// ****************************************************************************

// d- Nil-Coalescing Operator
/*
    let defaultLoop = 3
    var howMany: Int = optionalValue ?? defaultLoop
    for _ in 0..<howMany{
        print("Hello World!")
    }
    // Hello World!
    // Hello World!
    // Hello World!
    // Hello World!
    // Hello World!

    var secondOpt: Int?
    var loopNumber: Int = secondOpt ?? defaultLoop
    for _ in 0..<loopNumber{
        print("Hello World!")
    }
    // Hello World!
    // Hello World!
    // Hello World!
*/


