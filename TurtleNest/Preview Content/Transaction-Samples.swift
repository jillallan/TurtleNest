//
//  Transaction-Samples.swift
//  TurtleNest
//
//  Created by Jill Allan on 14/02/2025.
//

import Foundation
import SwiftData

extension Transaction {
    static let startingBalance = Transaction(
        timestamp: Date.from(year: 2025, month: 2, day: 1)!,
        amount: 2700.00,
        title: "Groceries",
        type: .balanceAdjustment
    )
    
//    static let salary = Transaction(
//        timestamp: Date.from(year: 2025, month: 3, day: 1)!,
//        amount: 2700.00,
//        title: "Groceries",
//        repeating: true,
//        type: .balanceAdjustment
//    )
//    
    static let bills = Transaction(
        timestamp: Date.from(year: 2025, month: 2, day: 2)!,
        amount: -1000.00,
        title: "Groceries",
        type: .planned
    )
    
    static let groceries = Transaction(
        timestamp: Date.from(year: 2025, month: 2, day: 4)!,
        amount: -10.99,
        title: "Groceries",
        type: .planned
    )

    static let book = Transaction(
        timestamp: Date.from(year: 2025, month: 2, day: 6)!,
        amount: -5.99,
        title: "Book",
        type: .planned
    )

}
