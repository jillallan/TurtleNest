//
//  Transaction.swift
//  TurtleNest
//
//  Created by Jill Allan on 14/02/2025.
//

import Foundation
import SwiftData

@Model
final class Transaction {
    var timestamp: Date
    var amount: Double
    var title: String
    var pot: Pot?

    init(timestamp: Date, amount: Double, title: String) {
        self.timestamp = timestamp
        self.amount = amount
        self.title = title
    }
}
