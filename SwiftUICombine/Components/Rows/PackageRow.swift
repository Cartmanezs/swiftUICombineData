//
//  PackageRow.swift
//  SwiftUICombine
//
//  Created by Igor Palyvoda on 28.11.2023.
//

import SwiftUI

struct PackageRow: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var package: Package
    
    var body: some View {
        VStack(alignment: .leading) {
            Link(destination: URL(string: package.link)!, label: {
                LinearGradient(gradient: Gradient(colors: colorScheme == .dark ? [Color(#colorLiteral(red: 0.6196078431, green: 0.6784313725, blue: 1, alpha: 0.85)), Color(#colorLiteral(red: 1, green: 0.5607843137, blue: 0.9803921569, alpha: 1))] : [Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .frame(height: 20)
                    .mask(Text(package.title)
                        .font(.subheadline)
                        .textCase(.uppercase)
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        )
            })
            
            Divider()
        }
    }
}

#Preview {
    PackageRow(package: packagesData[0])
}
