//
//  Transaction-Samples.swift
//  TurtleNest
//
//  Created by Jill Allan on 14/02/2025.
//

import Foundation
import SwiftData

extension Transaction {
    static let startingBalance = Transaction(
        timestamp: Date.from(year: 2025, month: 2, day: 1)!,
        amount: 2700.00,
        title: "Groceries",
        type: .balanceAdjustment
    )

    static let salary = Transaction(
        timestamp: Date.from(year: 2025, month: 3, day: 31)!,
        amount: 2493.53,
        title: "Groceries",
        repeating: true,
        type: .balanceAdjustment
    )

    static let bills = Transaction(
        timestamp: Date.from(year: 2025, month: 2, day: 2)!,
        amount: -1000.00,
        title: "Groceries",
        type: .planned
    )

    static let groceries = Transaction(
        timestamp: Date.from(year: 2025, month: 2, day: 4)!,
        amount: -10.99,
        title: "Groceries",
        type: .planned
    )

    static let book = Transaction(
        timestamp: Date.from(year: 2025, month: 2, day: 6)!,
        amount: -5.99,
        title: "Book",
        type: .planned
    )
    static let vodafone = Transaction(
        timestamp: Date.from(year: 2025, month: 2, day: 27)!,
        amount: -25.91,
        title: "Vodafone",
        repeating: true,
        type: .schedules
    )

    static let apple = Transaction(
        timestamp: Date.from(year: 2025, month: 2, day: 26)!,
        amount: -8.99,
        title: "Vodafone",
        repeating: true,
        type: .schedules
    )

    static let three = Transaction(
        timestamp: Date.from(year: 2025, month: 2, day: 27)!,
        amount: -29.89,
        title: "Vodafone",
        repeating: true,
        type: .schedules
    )

    static let amazonPrime = Transaction(
        timestamp: Date.from(year: 2025, month: 3, day: 1)!,
        amount: -8.99,
        title: "Amazon Prime",
        repeating: true,
        type: .schedules
    )

    static let specsavers = Transaction(
        timestamp: Date.from(year: 2025, month: 3, day: 3)!,
        amount: -20.00,
        title: "Specsavers",
        repeating: true,
        type: .schedules
    )

    static let apple2 = Transaction(
        timestamp: Date.from(year: 2025, month: 3, day: 8)!,
        amount: -7.99,
        title: "Apple",
        repeating: true,
        type: .schedules
    )

    static let hackingWithSwift = Transaction(
        timestamp: Date.from(year: 2025, month: 3, day: 11)!,
        amount: -16.41,
        title: "Hacking with Swift",
        repeating: true,
        type: .schedules
    )

    static let apple3 = Transaction(
        timestamp: Date.from(year: 2025, month: 3, day: 13)!,
        amount: -12.99,
        title: "Apple",
        repeating: true,
        type: .schedules
    )

    static let apple4 = Transaction(
        timestamp: Date.from(year: 2025, month: 3, day: 13)!,
        amount: -10.99,
        title: "Apple",
        repeating: true,
        type: .schedules
    )

    static let monzo = Transaction(
        timestamp: Date.from(year: 2025, month: 3, day: 14)!,
        amount: -7.00,
        title: "Monzo",
        repeating: true,
        type: .schedules
    )

}
