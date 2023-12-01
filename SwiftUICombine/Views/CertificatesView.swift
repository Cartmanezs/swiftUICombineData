//
//  CertificatesView.swift
//  SwiftUICombine
//
//  Created by Igor Palyvoda on 01.12.2023.
//

import SwiftUI

struct CertificatesView: View {
    @StateObject var certificateVM = CertificateViewModel()
    
    var body: some View {
        VStack {
            ForEach(certificateVM.certificates, id: \.id) { certificate in
                CertificateCard(certificate: certificate)
            }
        }
        .background(AccountBackground())
    }
}

#Preview {
    CertificatesView()
}
