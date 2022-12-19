//
//  Types.swift
//  Protocols
//
//  Created by Talha Saygili on 19.12.2022.
//


protocol canCrossBrigde{
    func crossBridge()
}

protocol canEnterCarPark{
    func enterCarPark()
}

protocol canTravelByFerry{
    func enterFerry()
}

protocol canDoAll: canCrossBrigde, canEnterCarPark, canTravelByFerry{}

