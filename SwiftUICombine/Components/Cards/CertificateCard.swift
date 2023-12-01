//
//  CertificateCard.swift
//  SwiftUICombine
//
//  Created by Igor Palyvoda on 01.12.2023.
//

import SwiftUI

struct CertificateCard: View {
    @EnvironmentObject var certificateVM: CertificateViewModel
    @Binding var selection: Int
    
    var body: some View {
        ZStack {
            Image("CertificateBackground")
                .resizable()
                .aspectRatio(contentMode: .fill)
            if certificateVM.certificates.count > 0 {
                content
            } else {
                Text("No certificate")
            }
        }
        .frame(maxWidth: 754, maxHeight: 465)
        .background(RadialGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.3448806107, blue: 0.256488502, alpha: 1)).opacity(0.8), Color(#colorLiteral(red: 0.3762973547, green: 0.165053755, blue: 0.8253222108, alpha: 1)).opacity(0.7)]), center: .bottomTrailing, startRadius: 5, endRadius: 900))
        .overlay(RoundedRectangle(cornerRadius: 30.0, style: .continuous).stroke( Color.white).blendMode(.overlay))
        .background(VisualEffectBlur(blurStyle: .systemUltraThinMaterialDark))
        .clipShape(RoundedRectangle(cornerRadius: 30.0, style: .continuous))
        .shadow(color: Color(#colorLiteral(red: 0.1585711539, green: 0.1139936522, blue: 0.3584182858, alpha: 0.5)), radius: 30, x: 0, y: 15)
    }
    
    var content: some View {
        VStack(spacing: 20) {
            Image(certificateVM.certificates[selection].logo)
                .resizable()
                .frame(width: 28, height: 28)
                .padding(8)
                .background(VisualEffectBlur(blurStyle: .systemThinMaterialDark))
                .mask(Circle())
                .background(Circle().stroke(.white.opacity(0.4), lineWidth: 0.5))
            
            Section {
                Text("Certificate of completion")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("this is to certify that")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.white.opacity(0.7))
            }
            .textCase(.uppercase)
            
            Text("Ihor")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                      
            Text("Successfully completed the online course \(certificateVM.certificates[selection].course) on \(certificateVM.certificates[selection].date)")
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .foregroundColor(.white.opacity(0.7))
                .frame(maxWidth: 250)
                .fixedSize(horizontal: false, vertical: true)
            
            Section {
                Divider()
                instructorRow
                Divider()
                certificateDataRow
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .foregroundColor(.white.opacity(0.7))
            .padding(.horizontal, 20)
        }
    }
    
    var instructorRow: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Design+Code Instructor")
            Text(certificateVM.certificates[selection].instructor)
        }
    }
    
    var certificateDataRow: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Certificate no: DC-\(certificateVM.certificates[selection].id)")
            Text("Certificate url: designcode.io/certificate/\(certificateVM.certificates[selection].id)")
        }
    }
}

#Preview {
    CertificateCard(selection: Binding.constant(0))
        .environmentObject(CertificateViewModel())
}
