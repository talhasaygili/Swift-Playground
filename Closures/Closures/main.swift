//
//  main.swift
//  Closures
//
//  Created by Talha Saygili on 22.12.2022.
//

// Function to Closure


func sum(first: Int, second: Int){
    let total = first + second
    print("From Function: \(total)")
}

sum(first: 3, second: 4)

/*
        TRANSFORMATION


func sum(first: Int, second: Int){
    let total = first + second
    print("From Function: \(total)")
}
 
-----------------------------------------
// Remove func key and func name

(first: Int, second: Int){
    let total = first + second
    print("From Function: \(total)")
}
 
 -----------------------------------------
// Change the opening bracket position

{(first: Int, second: Int)
    let total = first + second
    print("From Function: \(total)")
}

 -----------------------------------------
// Add "in" key to seperate parameters and body
 
{(first: Int, second: Int) in
    let total = first + second
    print("From Function: \(total)")
}

        IT'S DONE!
*/
 
// We can assign closure to a variable(var/let)
var sumClosure: (Int, Int) -> Void = {(first: Int, second: Int) -> Void in
    let total = first + second
    print("From Closure: \(total)")
}
sumClosure(3,4)


// Closure as Function Parameter

func calculate(first: Int, second: Int){
    let total = first * second
    print(total)
}
calculate(first: 3, second: 2)

// Create a function and send to "calculate" func as parameter

func multiplyNumbers(first: Int, second: Int) -> Int{
    return first * second
}

func calculateWithParam(first: Int, second: Int, multiplication: (Int, Int) -> Int){
    let total = multiplication(first,second)
    print("CalculateWithParam: \(total)")
}
calculateWithParam(first: 5, second: 10, multiplication: multiplyNumbers)


// Convert "multiplyNumbers" func to Closure
/*

{(first: Int, second: Int) -> Int in
    return first * second
}

*/

// Send the multiplication closure as params

calculateWithParam(first: 5, second: 10, multiplication: {(first: Int, second: Int) -> Int in
    return first * second
})

// So we can add Closures as func params




//      SHORTHAND ARGUMENT

calculateWithParam(first: 5, second: 10, multiplication: {(first: Int, second: Int) -> Int in
    return first * second
})
// 50

calculateWithParam(first: 5, second: 10, multiplication: {(first: Int, second: Int) in return first * second })
// 50

calculateWithParam(first: 5, second: 10, multiplication: {(first, second) in return first * second })
// 50

calculateWithParam(first: 5, second: 10, multiplication: {(first, second) in first * second })
// 50

calculateWithParam(first: 5, second: 10, multiplication: {$0 * $1 })
// 50




//      TRAILING CLOSURE

calculateWithParam(first: 5, second: 10) {$0 * $1 }
// 50

