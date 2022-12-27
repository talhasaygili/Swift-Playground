//
//  main.swift
//  Extensions
//
//  Created by Talha Saygili on 27.12.2022.
//

// EXTENSION SYNTAX
/*
    extension SomeType{
        // new functionality to add to SomeType
    }
 */

// COMPUTED PROPERTY

// Sterlin -> GBP
// Euro    -> EUR
extension Double{
    var eur: Double { return self * 0.94  }  // EUR
    var gbp: Double { return self * 0.83  }  // GBP
}

var myMoney: Double = 1.0                   // USD

//print(myMoney.eur)                          // USD/EUR
//print(myMoney.gbp)                          // USD/GBP
// 0.94
// 0.83

// INITIALIZER

struct DebitCard{
    var balance: Double = 0.0
}

struct CreditCard{
    var balance: Double = 0.0
}


struct BankAccount{
    var debitCard = DebitCard()
    var creditCard = CreditCard()
    
}

// Default Account
let defaultAccount = BankAccount()
//print(defaultAccount.creditCard.balance)
//print(defaultAccount.debitCard.balance)
// 0.0
// 0.0


// Specific Balance Account
let specificAccount = BankAccount(debitCard:  DebitCard(balance:  50.0),
                                  creditCard: CreditCard(balance: 50.0))

//print(specificAccount.creditCard.balance)
//print(specificAccount.debitCard.balance)
// 50.0
// 50.0

extension BankAccount{
    init(debit: DebitCard, credit: CreditCard){
        let dbWServiceFee = debit.balance - 10
        let crWServiceFee = credit.balance - 10
        self.init(debitCard:  DebitCard(balance: dbWServiceFee),
                  creditCard: CreditCard(balance: crWServiceFee))
    }
}



let newAccount = BankAccount(debit:  DebitCard(balance:  50.0),
                             credit: CreditCard(balance: 50.0))
//print(newAccount.creditCard.balance)
//print(newAccount.debitCard.balance)
// 40.0
// 40.0


let classicAccount = BankAccount(debitCard:  DebitCard(balance:  50.0),
                                 creditCard: CreditCard(balance: 50.0))
//print(classicAccount.creditCard.balance)
//print(classicAccount.debitCard.balance)
// 50.0
// 50.0


// METHODS

extension Int{
    func repetition(task: () -> ()){
        for _ in 0..<self {
            task()
        }
    }
}

/*
4.repetition {
    print("Hello")
}
 
 // Hello
 // Hello
 // Hello
 // Hello
 
*/

/*
3.repetition {
    print("Hello World!")
}
 
 // Hello World!
 // Hello World!
 // Hello World!
 
 */


// MUTATING INSTANCE METHODS

extension Int{
    mutating func square(){
        self = self * self
    }
    
    mutating func addOne(){
        self += 1
    }
    
    mutating func minusOne(){
        self -= 1
    }
    
}

var myInt: Int = 4
myInt.square()
//print(myInt)
// 16

myInt.addOne()
//print(myInt)
// 17

myInt.minusOne()
//print(myInt)
// 16



// SUBSCRIPTS

extension Int{
    subscript(digitIndex: Int) -> Bool{
        var base = 1
        for _ in 0..<digitIndex{
            base *= 10
        }
        let digit = (self / base) % 10
        return digit % 2 == 1
    }
}

//print(123456789[0])
// true
//print(123456789[1])
// false



// NESTED TYPES

extension Int{
    enum Direction{
        case up
        case down
        case left
        case right
        case anywhere
    }
    
    var move: Direction{
    switch self{
    case 2:
        return .up
    case 4:
        return .left
    case 6:
        return .right
    case 8:
        return .down
    default:
        return .anywhere
    }
    }
}


var playerTapped = [2,4,6,2,2,4,0,6,8]

func play(_ playerMoves: [Int] ){
    for i in playerMoves{
        switch i.move{
        case .up:
            print("UP!")
        case .down:
            print("DOWN!")
        case .left:
            print("LEFT!")
        case .right:
            print("RIGHT!")
        default:
            print("ANYWHERE!")
        }
    }
    
}

//play(playerTapped)
// UP!
// LEFT!
// RIGHT!
// UP!
// UP!
// LEFT!
// ANYWHERE!
// RIGHT!
// DOWN!



















