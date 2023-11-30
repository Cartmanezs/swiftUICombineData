//
//  PrimaryButton.swift
//  SwiftUICombine
//
//  Created by Igor Palyvoda on 30.11.2023.
//

import SwiftUI

struct PrimaryButton: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var text: String = "Contact Support"
    
    var body: some View {
        if colorScheme == .light {
            lightModeButton
        } else {
            darkModeButton
        }
    }
    
    var lightModeButton: some View {
        VStack {
            Text(text)
                .font(.headline)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 50)
        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5647058824, green: 0.462745098, blue: 0.9058823529, alpha: 1)), Color(#colorLiteral(red: 0.5647058824, green: 0.462745098, blue: 0.9058823529, alpha: 1))])  , startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .foregroundColor(.white)
    }
    
    var darkModeButton: some View {
        ZStack {
            RoundedRectangle(cornerRadius:12)
                .frame(height: 50)
                .angularGradientGlow(colors: [Color(#colorLiteral(red: 0.3794994056, green: 0.5119729042, blue: 0.9995478988, alpha: 1)),Color(#colorLiteral(red: 0.9677110314, green: 0.4428214431, blue: 0.7149884105, alpha: 1)),Color(#colorLiteral(red: 0.8494300246, green: 0.6895725727, blue: 0.8478105068, alpha: 1)),Color(#colorLiteral(red: 0.5914550424, green: 0.8833864927, blue: 0.8349727988, alpha: 1)),Color(#colorLiteral(red: 0.3800801933, green: 0.5135653019, blue: 1, alpha: 1))])
                .blur(radius: 8)
            
            Text(text)
                .linearGradientBackground(colors: [Color(#colorLiteral(red: 0.6153626442, green: 0.6778379083, blue: 1, alpha: 1)),  Color(#colorLiteral(red: 0.9717645049, green: 0.5630813837, blue: 0.9796280265, alpha: 1))])
                .font(.headline)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color(#colorLiteral(red: 0.09411764706, green: 0.07058823529, blue: 0.2392156863, alpha: 0.9)))
                .cornerRadius(16)
                .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.white, lineWidth: 1).blendMode(.overlay))
        }
        .frame(height:50)
    }
}

#Preview {
    PrimaryButton()
}
