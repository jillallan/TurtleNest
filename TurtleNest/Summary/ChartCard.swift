//
//  ChartCard.swift
//  TurtleNest
//
//  Created by Jill Allan on 15/02/2025.
//

import Charts
import OSLog
import SwiftUI

struct ChartCard: View {
    let logger = Logger(
        subsystem: Bundle.main.bundleIdentifier!,
        category: String(describing: ChartCard.self)
    )

    var title: String
    var text: String
    var icon: String
    let transactions: [Transaction]
    @State var runningTotal = [Int: Double]()

    var body: some View {
        let _ = print("Hello")
//        let _ = print("daily totals: \(runningTotal)")
        VStack {
            VStack(alignment: .leading, spacing: 5) {
                Label(title, systemImage: icon)
                    .font(.system(.headline, weight: .semibold))
                Text(text)
                    .font(.system(.subheadline, weight: .regular))
                    .foregroundColor(Color(uiColor: UIColor(red: 0.36, green: 0.38, blue: 0.4, alpha: 1)))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            Chart(runningTotal.sorted { $0.key < $1.key }, id: \.key) { key, value in
                LineMark(
                    x: .value("Day", key),
                    y: .value("Value", value)
                )
            }
            .chartXScale(domain: [1, 31])
            .frame(maxWidth: .infinity)

        }
        .padding(12)
        .background {
            Color(uiColor: UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1))
        }
        .cornerRadius(8)
        .frame(height: 200)
        .onAppear {
            runningTotal = calculateRunningBalance(transactions: transactions)
            print("Running total: \(runningTotal)")
            logger.info("bye bye")
        }
    }

    func calculateRunningBalance(transactions: [Transaction]) -> [Int: Double] {
        // Group and sum transactions by day
        let dailyTotals = transactions.reduce(into: [Int: Double]()) { dict, transaction in
            let day = transaction.day
            dict[day, default: 0.0] += transaction.amount
        }
        print("daily totals: \(dailyTotals)")

        return dailyTotals
    }

    func calculateRunningTotal(transactions: [Transaction]) -> [Int: Double] {
        var dictionary = Dictionary(uniqueKeysWithValues: (1...31).map { ($0, 0.0) })

        for transaction in transactions {
            if let currentValue = dictionary[transaction.day] {
                dictionary[transaction.day] = currentValue + transaction.amount
            }
        }

        return dictionary

    }
}

#Preview(traits: .sampleData) {
    ChartCard(
        title: "Balance",
        text: "Current Account",
        icon: "chart.xyaxis.line",
        transactions: Pot.current.transactions
    )
}
