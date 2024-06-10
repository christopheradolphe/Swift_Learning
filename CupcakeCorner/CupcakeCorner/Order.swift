//
//  Order.swift
//  CupcakeCorner
//
//  Created by Christopher Adolphe on 2024-06-09.
//

import Foundation

@Observable
class Order {
    static let types = ["Vanilla", "Strawberry", "Chocalate", "Rainbow"]
    
    var type = 0
    var quantity = 3
    
    var specialRequestEnabled = false
    var extraFrosting = false
    var addSprinkles = false
}
