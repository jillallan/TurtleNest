//
//  ContentView.swift
//  TurtleNest
//
//  Created by Jill Allan on 14/02/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Overview", systemImage: "house") {
                SummaryView()
            }
            Tab("Spending", systemImage: "banknote") {
                TransactionView()
            }
            Tab("Pots", systemImage: "banknote") {
                PotView()
            }
        }
    }
}

#Preview(traits: .sampleData) {
    ContentView()
}
