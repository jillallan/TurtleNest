//
//  Pot-Samples.swift
//  TurtleNest
//
//  Created by Jill Allan on 14/02/2025.
//

import Foundation
import SwiftData

extension Pot {
    static let current = Pot(title: "Current", type: .current)
    static let savings = Pot(title: "Savings", type: .savings)
    static let pension = Pot(title: "Pension", type: .pension)
}
