//
//  SummaryView.swift
//  TurtleNest
//
//  Created by Jill Allan on 14/02/2025.
//

import Charts
import SwiftData
import SwiftUI

struct SummaryView: View {
    @Query private var transactions: [Transaction]

    var body: some View {
        let _ = print("Hello")
        NavigationStack {
            ScrollView {
                VStack {
                    HStack(spacing: 12) {
                        DashboardTile(title: "Current Account", text: "Balance", icon: "banknote", amount: 236.0)
                        DashboardTile(title: "Savings", text: "Balance", icon: "banknote", amount: 5006.0)
                    }
                }
                ChartCard(title: "Projected Balance", text: "February", icon: "Banknote", transactions: transactions)
            }
            .padding(12)
            .navigationTitle("Summary")
        }
    }
}

#Preview(traits: .sampleData) {
    SummaryView()
}
