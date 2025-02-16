//
//  TransactionRow.swift
//  TurtleNest
//
//  Created by Jill Allan on 16/02/2025.
//

import SwiftUI

struct TransactionRow: View {
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

#Preview {
    TransactionRow(title: "Vodafone", subtitle: "Monthly on 17th", amount: 25.91)
}
