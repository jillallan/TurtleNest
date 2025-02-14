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
        context.insert(Transaction.groceries)
    }
}
