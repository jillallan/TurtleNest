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
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
