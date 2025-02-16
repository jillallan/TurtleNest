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
    var repeating: Bool
    var type: TransactionType

    var month: Int {
        Int(Calendar.current.component(.month, from: timestamp))
    }

    var day: Int {
        Int(Calendar.current.component(.day, from: timestamp))
    }

    init(timestamp: Date, amount: Double, title: String, repeating: Bool = false, type: TransactionType) {
        self.timestamp = timestamp
        self.amount = amount
        self.title = title
        self.repeating = repeating
        self.type = type
    }
}
