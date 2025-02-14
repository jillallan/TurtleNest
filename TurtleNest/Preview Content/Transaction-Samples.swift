//
//  Transaction-Samples.swift
//  TurtleNest
//
//  Created by Jill Allan on 14/02/2025.
//

import Foundation
import SwiftData

extension Transaction {
    static let groceries = Transaction(
        timestamp: Date.now,
        amount: 10.99,
        title: "Groceries"
    )

    static let ipad = Transaction(
        timestamp: Date.now.addingTimeInterval(1000000),
        amount: 10.99,
        title: "Groceries"
    )
}
