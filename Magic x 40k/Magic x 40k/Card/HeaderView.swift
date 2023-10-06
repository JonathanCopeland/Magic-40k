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
            
    
        
            
            ZStack {
                GradientFill(card: card)
                    .frame(width: 325, height: 32)
                    .clipShape(EllipticalShapeOuter())
                
                Rectangle()
                    .fill(.black)
                    .frame(width: 321, height: 28)
                    .clipShape(EllipticalShapeOuterStroke())
                
            
                Rectangle()
                    .fill(ShadowViews.init().shadowGradient)
                    .frame(width: 319, height: 26)
                    .clipShape(EllipticalShapeInner()).opacity(0.3)
                    
                
                Rectangle()
                    .fill(ShadowViews.init().shadowGradient2)
                    .frame(width: 319, height: 26)
                    .clipShape(EllipticalShapeInner())
                
                
                Rectangle()
                    .fill(.cardBackgroundTextHeading)
                    .frame(width: 315, height: 22)
                    .clipShape(EllipticalShapeInnerPlate())
            }
            
                
                
            HStack {
                Text(card.name)
                    .font(.custom("Matrix", size: 19))
                    .padding(.top, 2)
                
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
            .frame(width: 303, height: 14)
            .padding([.all], 10)
            

        }


        

    }
    
    

        
}

#Preview {
    HeaderView(card: universes.data.cards[0])
}
