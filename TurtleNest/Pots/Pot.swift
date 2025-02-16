//
//  Pot.swift
//  TurtleNest
//
//  Created by Jill Allan on 14/02/2025.
//

import Foundation
import SwiftData

@Model
final class Pot {
    var title: String
    var type: PotType
    var transactions = [Transaction]()

    var balance: Double {
        transactions.reduce(0) { $0 + $1.amount }
    }

//    var runningTotal: [Date: Double] {
//
//    }

    init(title: String, type: PotType) {
        self.title = title
        self.type = type
    }
}
