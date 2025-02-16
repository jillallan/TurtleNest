//
//  PotRow.swift
//  TurtleNest
//
//  Created by Jill Allan on 16/02/2025.
//

import SwiftUI

struct PotRow: View {
    let title: String
    let subtitle: String
    let amount: Double

    var body: some View {
        HStack {
            Image(systemName: "bag")
                .font(.system(.title))
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(.headline, weight: .semibold))
                Text(subtitle)
                    .font(.system(.subheadline, weight: .regular))
                    .foregroundColor(Color(uiColor: UIColor(red: 0.36, green: 0.38, blue: 0.4, alpha: 1)))
            }
            Spacer()
            Text(amount, format: .currency(code: "GBP"))
                .font(.system(.title, weight: .regular))
        }
    }
}

#Preview(traits: .sampleData) {
    PotRow(title: Pot.current.title, subtitle: Pot.current.title, amount: 34.00)
}
