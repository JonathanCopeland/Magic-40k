//
//  HeaderView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 04/09/2023.
//

import SwiftUI

struct HeaderView: View {
    
    let card: Card
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerSize: CGSize(width: 10, height: 10), style: .continuous)
                .fill(.cardBorder)
                .frame(width: 325, height: 37)
            
            RoundedRectangle(cornerSize: CGSize(width: 8, height: 8), style: .continuous)
                .fill(.cardBackgroundTextHeading)
                .strokeBorder(LinearGradient(gradient: Gradient(colors: [.white.opacity(1), .black.opacity(1)]), startPoint: .top, endPoint: .bottom).blendMode(.overlay), lineWidth: 4)
                .strokeBorder(lineWidth: 1)
                .frame(width: 319, height: 32)
                .padding([.top, .bottom], 2)
                .padding([.leading, .trailing], 2)
            
                
                
            HStack {
                Text(card.name)
                    .font(.custom("Matrix", size: 15))
                
                Spacer()
                
                HStack (spacing: 3) {
                    Image("1")
                        .resizable()
                        .frame(width: 14.0, height: 14.0)
                    Image("W")
                        .resizable()
                        .frame(width: 14.0, height: 14.0)
                }
                .shadow(radius: 1)
                
                
            }
            .frame(width: 300, height: 14)
            .padding([.all], 10)

        }

        

    }
        
}

#Preview {
    HeaderView(card: universes.data.cards[0])
}
