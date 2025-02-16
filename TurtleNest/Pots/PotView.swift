//
//  PotView.swift
//  TurtleNest
//
//  Created by Jill Allan on 14/02/2025.
//

import SwiftData
import SwiftUI

struct PotView: View {
    @Query private var pots: [Pot]
    @Query private var transactions: [Transaction]

    var body: some View {
        NavigationStack {
            List {
                ForEach(pots) { pot in
                    NavigationLink(value: pot) {
                        PotRow(
                            title: pot.title,
                            subtitle: pot.title,
                            amount: pot.balance
                        )
                    }
                }
            }
                .navigationTitle("Pots")
#if DEBUG
                .toolbar {SamplesToolbar()}
#endif
        }
    }
}

#Preview(traits: .sampleData) {
    PotView()
}
