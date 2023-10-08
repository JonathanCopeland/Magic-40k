//
//  BodyView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 25/06/2023.
//

import SwiftUI

struct BodyView: View {
    
    let card: Card
    
    var body: some View {
        

        ZStack (alignment: .top) {
            GradientFill(card: card)
                .frame(width: 316, height: 153)
            

            
            VStack(alignment: .leading) {
                Text(card.text)
                    .font(.custom("Times New Roman", size: 15))

                    
                if(card.flavorText != nil) {
                    Divider()
                }
                
                Text(card.flavorText ?? "")
                .font(.custom("Times New Roman", size: 15))
                .italic()
                
                
                Spacer()
            }
            .padding(.all, 2)
            .padding(.top, 2)
            .padding(.leading, 1)
            .frame(width: 310, height: 150)
            .modifier(BackgroundModifier(card: card))
            .background(.white)
            
            Rectangle()
                .fill(.clear)
                .border(ShadowViews.init().shadowGradient3.opacity(0.8))
                .frame(width: 310, height: 150)
                
            Rectangle()
                .fill(.clear)
                .border(ShadowViews.init().shadowGradient4)
                .frame(width: 310, height: 150)
                
            
            GradientFill(card: card)
                .frame(width: 316, height: 2)
                .padding(.top, -2)

                
            
            
        }



  

    }
}

#Preview {
    BodyView(card: universes.data.cards[0])
}
