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
                BodyStringView(card: card)
                    .frame(width: 309, height: 147)

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

                
            VStack {}
            .frame(width: 310, height: 150)
            .background(
                Image(getBGBackground())
                    .opacity(0.2)
                    .blendMode(.softLight)
            )
            .clipShape(
                EllipticalShapeInnerPlate()
            )
            
        }



  

    }
    
    
    func getBGBackground() -> String {
        
        let values = card.colorIdentity
        
        
        if(values.count == 3 || values.count == 2) {
            return "gold"
        }
        
        
                
        if(values.count != 2) {
            switch values.first?.rawValue {
            case "B":
                return "bgBlack"
            case "W":
                return "bgWhite"
            case "R":
                return "bgRed"
            case "G":
                return "bgGreen"
            case "U":
                return "bgBlue"
            default:
                return "artifact"
            }
        }
        
        
        
        return "bgBlue"
    }
    

    
}

#Preview {
    BodyView(card: universes.data.cards[54])
}
