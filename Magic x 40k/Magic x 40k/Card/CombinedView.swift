//
//  CombinedView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 04/09/2023.
//

import SwiftUI

struct CombinedView: View {
    var body: some View {
        ZStack {
            FrameView()
            VStack (alignment: .center, spacing: 0) {
                HeaderView()
                ImageView()
                TypeView()
                BodyView()
                FooterView()
            }
            .padding(.top, 9)
            
            
        }
    }
}

#Preview {
    CombinedView()
}
