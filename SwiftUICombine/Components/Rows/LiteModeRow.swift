//
//  LiteModeRow.swift
//  SwiftUICombine
//
//  Created by Igor Palyvoda on 01.12.2023.
//

import SwiftUI

struct LiteModeRow: View {
    @State private var isLiteMode: Bool = false
    var body: some View {
        Toggle(isOn: $isLiteMode, label: {
            HStack(spacing: 12) {
                GradientIcon(icon: "speedometer")
                
                VStack(alignment: .leading) {
                    Text("Lite Mode")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text("Better performance. Recommended for iPhone X and older.")
                        .font(.caption2)
                        .opacity(0.8)
                }
            }
        })
        .toggleStyle(SwitchToggleStyle(tint: Color(#colorLiteral(red: 0.3507142663, green: 0.335752815, blue: 0.842436254, alpha: 1))))
    }
}

#Preview {
    LiteModeRow()
}
