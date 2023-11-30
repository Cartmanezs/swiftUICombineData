//
//  ContentView.swift
//  SwiftUICombine
//
//  Created by Igor Palyvoda on 28.11.2023.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    @State private var contentOffset = CGFloat(0)
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                TrackableScrollView { offset in
                    contentOffset = offset.y
                } content: {
                    content
                }
                
                VisualEffectBlur(blurStyle: .systemMaterial)
                    .opacity(contentOffset < -16 ? 1 : 0 )
                    .animation(.easeIn)
                    .ignoresSafeArea()
                    .frame(height: 0)
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .background(AccountBackground())
            .navigationBarHidden(true)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .accentColor(colorScheme == .dark ? .white : .purple)
    }
    
    var content: some View {
        VStack {
            ProfileRow()
            
            VStack {
                NavigationLink(destination: FAQView()) {
                    MenuRow()
                }
                divider
                NavigationLink(destination: PackagesView()) {
                    MenuRow(title: "SwiftUI Packages", leftIcon: "square.stack.3d.up.fill")
                }
                divider
                Link(destination: URL(string: "https://www.youtube.com")!, label: {
                    MenuRow(title: "Youtube Channel", leftIcon: "play.rectangle.fill", rightIcon: "link")
                })
            }
            .blurBackground()
            .padding(.top, 20)
            
            Text("Version 1.00")
                .foregroundColor(.white.opacity(0.7))
                .padding(.top, 20)
                .padding(.horizontal, 20)
                .padding(.bottom, 10)
                .font(.footnote)
            
        }
        .foregroundColor(.white)
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .padding(.bottom, 20)

    }
    
    var divider: some View {
        Divider().background(Color.white.blendMode(.overlay))
    }
}

#Preview {
    ContentView()
}
