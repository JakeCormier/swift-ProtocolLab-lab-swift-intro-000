//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}

protocol ProvideAccess {
    func allowEntryWithPassword(_ password: [Int]) -> Bool
}

extension BankVault: ProvideAccess {
    func allowEntryWithPassword(_ password: [Int]) -> Bool {
        var finalReturn = true
        
        
        if password.count > 10  || password.isEmpty {
            finalReturn = false
            return finalReturn
        }
        
        
        for (n,c) in password.enumerated() {
            if n % 2 == 0 && c % 2 != 0{
                finalReturn = false
                return finalReturn
            }
        }
        finalReturn = true
        return finalReturn
    }
}





