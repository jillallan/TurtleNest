//
//  SamplesToolbar.swift
//  TurtleNest
//
//  Created by Jill Allan on 16/02/2025.
//

import SwiftUI

struct SamplesToolbar: ToolbarContent {
    @Environment(\.modelContext) private var modelContext

    var body: some ToolbarContent {
        ToolbarItem(placement: .primaryAction) {
            Button("SAMPLES") {
                Task {
                    createData()
                }
            }
        }
        ToolbarItem(placement: .secondaryAction) {
            Button("Clear") {
                deleteData()
            }
        }
    }

    @MainActor
    func createData() {
        deleteData()
        SampleDataGenerator.generateData(context: modelContext)
    }

    func deleteData() {
        try? modelContext.delete(model: Pot.self)
    }
}
