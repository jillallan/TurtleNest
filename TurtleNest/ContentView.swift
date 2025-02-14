//
//  ContentView.swift
//  TurtleNest
//
//  Created by Jill Allan on 14/02/2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var transactions: [Transaction]

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(transactions) { transaction in
                    NavigationLink {
                        Text("Item at \(transaction.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
                    } label: {
                        Text(transaction.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
                    }
                }
                .onDelete(perform: deleteTransactions)
            }
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
                title: "New transaction"
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

#Preview {
    ContentView()
        .modelContainer(for: Transaction.self, inMemory: true)
}
