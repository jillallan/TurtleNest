//
//  SampleData.swift
//  TurtleNest
//
//  Created by Jill Allan on 14/02/2025.
//

import Foundation
import SwiftData
import SwiftUI

struct SampleData: PreviewModifier {
    static func makeSharedContext() async throws -> ModelContainer {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: Pot.self, configurations: config)

        SampleDataGenerator.generateData(context: container.mainContext)
        return container
    }

    func body(content: Content, context: ModelContainer) -> some View {
        content.modelContainer(context)
    }
}

extension PreviewTrait where T == Preview.ViewTraits {
    @MainActor static var sampleData: Self = .modifier(SampleData())
}
