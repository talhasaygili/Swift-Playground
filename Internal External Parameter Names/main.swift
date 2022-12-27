//
//  main.swift
//  Internal-External Params
//
//  Created by Talha Saygili on 26.12.2022.
//

import Foundation

// Same naming

func type1(name: String, lastname: String){
    print("Welcome \(name) \(lastname)!")
}

type1(name: "Talha", lastname: "Saygili")


// Different Naming

func type2(CustomerName name: String, CustomerLastName lastname: String){
    print("Welcome \(name) \(lastname)!")
}

type2(CustomerName: "Talha", CustomerLastName: "Saygili")


// Without external naming

func type3(_ name: String, _ lastname: String){
    print("Welcome \(name) \(lastname)!")
}

type3("Talha", "Saygili")
