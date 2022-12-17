//
//  Classes.swift
//  ClassesOOP
//
//  Created by Talha Saygili on 15.12.2022.
//

import Foundation


// Base Class
class Room{
    
    // Properties
    var minibar: String
    var airConditioner: String
    
    // Init Method
    init(minibar: String, airConditioner: String) {
        self.minibar = minibar
        self.airConditioner = airConditioner
    }

    // Method
    func resetSettings(){
        print("\(minibar) and \(airConditioner) Settings Reset!")
    }
    
}

class RegularRoom: Room{
    
    // No need to add init method if there is no additional property
    
    
    // If a method belonging to the base class is to be changed,
    // The method is written by adding "override"
    override func resetSettings() {
        print("Regular Room Settings Reset!")
        print("\(minibar) and \(airConditioner) are ready to use!")
    }
    
    // If a method that is not in the base class is to be written,
    // It is written without adding an override.
    func roomInfo(){
        print("This Regular Room has \(minibar) and \(airConditioner)")
    }
    
}


class Suite: Room{
    // Additional Property
    var mobilePhone: String
    
    
    // If there is an additional property on the base class,
    // The init method should be added
    init(minibar: String, airConditioner: String, mobilePhone: String) {
        self.mobilePhone = mobilePhone
        super.init(minibar: minibar, airConditioner: airConditioner)
    }
    
    
    override func resetSettings() {
        print("\(minibar) and \(airConditioner) Settings Reset!")
        print("\(mobilePhone) Synced!")
    }
    
}

