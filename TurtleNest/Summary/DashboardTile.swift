//
//  DashboardTile.swift
//  TurtleNest
//
//  Created by Jill Allan on 14/02/2025.
//

import SwiftUI

struct DashboardTile: View {
    var title: String
    var text: String
    var icon: String
    var amount: Double

    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 5) {
                Label(title, systemImage: icon)
                    .font(.system(.headline, weight: .semibold))
                Text(text)
                    .font(.system(.subheadline, weight: .regular))
                    .foregroundColor(Color(uiColor: UIColor(red: 0.36, green: 0.38, blue: 0.4, alpha: 1)))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
            VStack(alignment: .leading, spacing: 5) {
                Text(amount, format: .number)
                    .font(.largeTitle)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(12)
        .background {
            Color(uiColor: UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1))
        }
        .cornerRadius(8)
        .frame(height: 200)
    }
}

#Preview {
    DashboardTile(title: "Current Account", text: "current balance in account", icon: "banknote", amount: 236.00)
}
