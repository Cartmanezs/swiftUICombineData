//
//  NotificationsRow.swift
//  SwiftUICombine
//
//  Created by Igor Palyvoda on 01.12.2023.
//

import SwiftUI

struct NotificationsRow: View {
    @State private var subscribed: Bool = true
    var body: some View {
        Toggle(isOn: $subscribed, label: {
            HStack(spacing: 12) {
                GradientIcon(icon: "bell.fill")
                
                VStack(alignment: .leading) {
                    Text("Notify me of new content")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text("Max once a week.")
                        .font(.caption2)
                        .opacity(0.8)
                }
            }
        })
        .toggleStyle(SwitchToggleStyle(tint: Color(#colorLiteral(red: 0.3507142663, green: 0.335752815, blue: 0.842436254, alpha: 1))))
    }
}

#Preview {
    NotificationsRow()
}
