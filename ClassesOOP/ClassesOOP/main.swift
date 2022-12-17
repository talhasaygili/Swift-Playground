//
//  main.swift
//  ClassesOOP
//
//  Created by Talha Saygili on 15.12.2022.
//

import Foundation



var defaultRoom = Room(minibar: "Eco-Minibar", airConditioner: "AirHigh")
defaultRoom.resetSettings()
// Eco-Minibar and AirHigh-SE Settings Reset!


var myRegularRoom = RegularRoom(minibar: "Minibar-Regular", airConditioner: "AirHigh-Classic")
myRegularRoom.resetSettings()
// Regular Room Settings Reset!
// Minibar-Regular and AirHigh-Classic are ready to use!


var mySuite = Suite(minibar: "Luxury Minibar - Black Edition", airConditioner: "AirHigh-A+", mobilePhone: "IPhone-L")
mySuite.resetSettings()
// Luxury Minibar - Black Edition and AirHigh-A+ Settings Reset!
// IPhone-L Synced!
