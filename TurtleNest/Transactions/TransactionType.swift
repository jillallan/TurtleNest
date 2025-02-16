//
//  TransactionType.swift
//  TurtleNest
//
//  Created by Jill Allan on 15/02/2025.
//

import Foundation

enum TransactionType: Codable {
    case balanceAdjustment
    case planned
    case schedules
    case actual
}
