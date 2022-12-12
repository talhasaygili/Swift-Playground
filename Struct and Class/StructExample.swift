//
//  StructExample.swift
//  struct-class
//
//  Created by Talha Saygili
//

import Foundation

struct IPhoneStruct{
    
    var model: String
    var color: String
    var storage: Int
    
    // Swift gives free init method to Struct 
    
    func call(contact: String){
        print("Calling \(contact) from Struct")
    }
    
    func playMusic(music: String){
        print("Playing \(music) from Struct")
        
    }
    
    mutating func changeStorage(newStorage: Int){        // We have to add "mutating" to be authorized to change a value in Struct
        storage = newStorage
    }
}
