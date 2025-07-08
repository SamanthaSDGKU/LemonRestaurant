//
//  Validation.swift
//  LemonRestaurant
//
//  Created by Samantha Jimenez on 07/07/25.
//

import Foundation

struct Validation {
    static func isValidName(_ name: String)->Bool{
        return name.count > 2 // true or false
    }
    
    static func isValidGuestCount(_ guest: Int)->Bool{
        return guest > 0
    }
    
    // guest > 5
    
    
    //other validations
    
    
}
