//
//  TurtleNestApp.swift
//  TurtleNest
//
//  Created by Jill Allan on 14/02/2025.
//

import SwiftUI
import SwiftData

@main
struct TurtleNestApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Pot.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
