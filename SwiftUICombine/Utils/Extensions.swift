//
//  Extensions.swift
//  SwiftUICombine
//
//  Created by Igor Palyvoda on 30.11.2023.
//

import SwiftUI

extension View {
    func angularGradientGlow(colors: [Color]) -> some View {
        self.overlay(AngularGradient(gradient: Gradient(colors: colors), center: .center, angle: .degrees(0.0)))
            .mask(self)
    }
    
    func linearGradientBackground(colors: [Color]) -> some View {
        self.overlay(LinearGradient(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing))
            .mask(self)
    }
    
    func blurBackground() -> some View {
        self
        .padding(15)
        .background(Color("Background 1"))
        .background(VisualEffectBlur(blurStyle: .systemUltraThinMaterialDark))
        .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous).stroke(Color.white, lineWidth: 1.0).blendMode(.overlay))
        .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
        
    }
}
