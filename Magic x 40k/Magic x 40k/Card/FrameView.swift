//
//  FrameView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 04/09/2023.
//

import SwiftUI

struct FrameView: View {
    var body: some View {
        ZStack (alignment: .top) {
            VStack {
                VStack {
                    
                    
                    
                    
                    Spacer()
                    
                    
                    
                }
                .frame(width: 330, height: 425)
                .background(.cardBackground)
                .clipShape(
                    .rect(
                        topLeadingRadius: 4,
                        bottomLeadingRadius: 52,
                        bottomTrailingRadius: 52,
                        topTrailingRadius: 4
                    )
                )
                Spacer()
            }
            .padding(16)

            

        }
        .frame(width: 361, height: 505)
        .background(.black)
        .cornerRadius(12)
    }
}

#Preview {
    FrameView()
}
