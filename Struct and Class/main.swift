//
//  main.swift
//  struct-class
//
//  Created by Talha Saygili
//

import Foundation

// CLASS **************************************************************************************

// Classes are Reference Type

let myIPhoneC = IPhoneClass(model: "iPhone13", color: "Green", storage: 128)
let yourIPhoneC = myIPhoneC                                 // You copied my iPhone info

yourIPhoneC.color = "Blue"                                  // You wanted to change your iPhone color

print(yourIPhoneC.color)                                    // Blue
print(myIPhoneC.color)                                      // Mine is also blue!!!


// My iPhone Functions
myIPhoneC.call(contact: "Mom")                              // Calling Mom from Class
myIPhoneC.playMusic(music: "Ohne Dich")                     // Playing Ohne Dich from Class



// Your iPhone Functions
yourIPhoneC.call(contact: "Sister")                         // Calling Sister from Class
yourIPhoneC.playMusic(music: "Nothing Else Matters")        // Playing Nothing Else Matters from Class


print(myIPhoneC.storage)                                    // 128
myIPhoneC.changeStorage(newStorage: 256)
print(myIPhoneC.storage)                                    // Changed to 256


print(yourIPhoneC.storage)                                  // 256
yourIPhoneC.changeStorage(newStorage: 512)
print(yourIPhoneC.storage)                                  // Changed to 512

// Both myIPhoneC and yourIPhone change single instance values.

// ********************************************************************************************








// STRUCT **************************************************************************************


// Structs are Value Type

var myIPhone = IPhoneStruct(model: "iPhone13", color: "Green", storage: 128)
var yourIPhone = myIPhone   // You copied my iPhone info

// Use "var" instead of "let" in Struct if you want to make changes

yourIPhone.color = "Blue"

print(yourIPhone.color)   // Blue
print(myIPhone.color)     // Green


// My iPhone Functions
myIPhone.call(contact: "Mom")                              // Calling Mom from Struct
myIPhone.playMusic(music: "Ohne Dich")                     // Playing Ohne Dich from Struct



// Your iPhone Functions
yourIPhone.call(contact: "Sister")                         // Calling Sister from Struct
yourIPhone.playMusic(music: "Nothing Else Matters")        // Playing Nothing Else Matters from Struct


// If we want to change a property value of struct, we need to use mutating func

print(myIPhone.storage)                                    // 128
myIPhone.changeStorage(newStorage: 256)
print(myIPhone.storage)                                    // Changed to 256


print(yourIPhone.storage)                                  // 128
yourIPhone.changeStorage(newStorage: 512)
print(yourIPhone.storage)                                  // Changed to 512


// ********************************************************************************************
