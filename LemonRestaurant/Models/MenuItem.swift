//
//  MenuItem.swift
//  LemonRestaurant
//
//  Created by Samantha Jimenez on 12/07/25.
//

import Foundation

struct MenuItem: Identifiable{
    var id = UUID()
    var name: String
    var description: String
    var price: Double
}
