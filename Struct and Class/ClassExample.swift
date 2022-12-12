//
//  ClassExample.swift
//  struct-class
//
//  Created by Talha Saygili

import Foundation

class IPhoneClass{
    
    var model: String
    var color: String
    var storage: Int
    
    init(model: String, color: String, storage: Int) {
        self.model = model
        self.color = color
        self.storage = storage
    }
    
    func call(contact: String){
        print("Calling \(contact) from Class")
    }
    
    func playMusic(music: String){
        print("Playing \(music) from Class")
        
    }
    
    func changeStorage(newStorage: Int){
        storage = newStorage
    }
}



