//
//  SampleDataGenerator.swift
//  TurtleNest
//
//  Created by Jill Allan on 14/02/2025.
//

import Foundation
import SwiftData

struct SampleDataGenerator {
    static func generateData(context: ModelContext) {
        context.insert(Pot.current)
        context.insert(Pot.savings)

        let transactions = [
            Transaction.startingBalance,
//            Transaction.salary,
            Transaction.bills,
            Transaction.book,
            Transaction.groceries
        ]

        for transaction in transactions {
            context.insert(transaction)
            Pot.current.transactions.append(transaction)
        }
    }
}
