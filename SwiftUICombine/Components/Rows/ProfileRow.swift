//
//  ProfileRow.swift
//  SwiftUICombine
//
//  Created by Igor Palyvoda on 30.11.2023.
//

import SwiftUI

struct ProfileRow: View {
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            profilePicture
            
            VStack(alignment: .leading, spacing: 2) {
                Text("Marta Diep")
                    .font(.title2)
                    .fontWeight(.bold)
                    .lineLimit(1)
                    .foregroundColor(.white)
                
                Text("View Certificates")
                    .font(.footnote)
                    .foregroundStyle(.white.opacity(0.7))
                
            }
            
            Spacer()
            
            glowIcon
        }
        .blurBackground()
        
    }
    
    var profilePicture: some View {
        ZStack {
            Image(systemName: "circle.fill")
                .resizable()
                .font(.system(size: 66))
                .angularGradientGlow(colors: [.blue, .green, .yellow, .red])
                .frame(width: 66, height: 66)
                .blur(radius: 10)
            
            VStack {
                Image("Profile")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 66, height: 66, alignment: .center)
                    .cornerRadius(50)
            }
            .overlay(Circle().stroke(Color.white, lineWidth: 1.0))
        }
    }
    
    var glowIcon: some View {
        ZStack {
            AngularGradient(gradient: Gradient(colors: [.blue,.red, .green, .green]), center: .center).blur(radius: 8).shadow(radius: 30)
                .frame(width: 36, height: 36)
                
            Image(systemName: "square.stack.fill")
                .linearGradientBackground(colors: [Color(#colorLiteral(red: 0.6160873771, green: 0.6849810481, blue: 0.9977017045, alpha: 1)), Color(#colorLiteral(red: 0.9715972543, green: 0.5595020652, blue: 0.9867854714, alpha: 1))])
                .frame(width: 36, height: 36)
                .background(Color(#colorLiteral(red: 0.2049749792, green: 0.1460723579, blue: 0.3049637675, alpha: 0.8)))
                .mask(RoundedRectangle(cornerRadius: 12, style: .continuous))
                .overlay(RoundedRectangle(cornerRadius: 12, style: .continuous).stroke(.white.opacity(0.7), lineWidth: 1).blendMode(.overlay))
        }
    }
}

#Preview {
    ProfileRow()
}
