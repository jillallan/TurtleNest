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
            Transaction.groceries,
            Transaction.ipad
        ]
        
        for transaction in transactions {
            context.insert(transaction)
            Pot.savings.transactions.append(transaction)
        }
    }
}
