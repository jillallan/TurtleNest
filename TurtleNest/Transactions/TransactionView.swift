//
//  TransactionView.swift
//  TurtleNest
//
//  Created by Jill Allan on 14/02/2025.
//

import SwiftUI
import SwiftData

struct TransactionView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var transactions: [Transaction]

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(transactions) { transaction in
                    NavigationLink {
                        Text("Item at \(transaction.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
                    } label: {
                        TransactionRow(title: transaction.title, subtitle: "Placeholder", amount: transaction.amount)
                    }
                }
                .onDelete(perform: deleteTransactions)
            }
            .navigationTitle("Transactions")
#if os(macOS)
            .navigationSplitViewColumnWidth(min: 180, ideal: 200)
#endif
            .toolbar {
#if os(iOS)
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
#endif
                ToolbarItem {
                    Button(action: addTransaction) {
                        Label("Add Transaction", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select an transaction")
        }
    }

    private func addTransaction() {
        withAnimation {
            let newTransaction = Transaction(
                timestamp: Date.now,
                amount: 0.0,
                title: "New transaction",
                type: .planned
            )
            modelContext.insert(newTransaction)
        }
    }

    private func deleteTransactions(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(transactions[index])
            }
        }
    }
}

#Preview(traits: .sampleData) {
    TransactionView()
}
