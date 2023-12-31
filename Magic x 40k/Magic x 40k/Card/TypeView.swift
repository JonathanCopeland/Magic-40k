//
//  TypeView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 04/09/2023.
//

import SwiftUI


struct TypeView: View {
    
    
    let card: Card
    
    var body: some View {
        
        ZStack {
            

            ZStack {
                GradientFill(card: card)
                    .frame(width: 325, height: 30)
                    .clipShape(EllipticalShapeOuter2())
                
                Rectangle()
                    .fill(.black)
                    .frame(width: 321, height: 26)
                    .clipShape(EllipticalShapeOuterStroke2())
                
                Rectangle()
                    .fill(getColors())
                    .frame(width: 319, height: 24)
                    .clipShape(EllipticalShapeInner())
                
                
                Rectangle()
                    .fill(ShadowViews.init().shadowGradient)
                    .frame(width: 319, height: 24)
                    .clipShape(EllipticalShapeInner2()).opacity(0.5)
                    
                
                Rectangle()
                    .fill(ShadowViews.init().shadowGradient2)
                    .frame(width: 319, height: 24)
                    .clipShape(EllipticalShapeInner2()).opacity(0.1)
                
                
                Rectangle()
                    .fill(getColors())
                    .frame(width: 316, height: 21)
                    .clipShape(EllipticalShapeInnerPlate2())
                
                VStack {}
                .frame(width: 319, height: 24)
                .background(
                    Image(getBGBackground())
                        .opacity(0.4)
                        .blendMode(.softLight)
                )
                .clipShape(
                    EllipticalShapeInnerPlate()
                )
            }
            
                
                
            HStack {
                Text(card.type)
                    .font(.custom("Matrix", size: 16.5))
                    .padding(.top, 2)
                
                Spacer()
                
                RarityView(rarity: card.rarity.rawValue)
                    .scaleEffect(1.2)
                
                
            }
            .frame(width: 308, height: 14)
            .padding([.all], 10)
            

        }


    }
    
    func getColors() -> SwiftUI.Color {
        
        if(card.colors.count == 3 || card.colors.count == 2) {
            return .singleLightGold
        }
        
        if(card.colors.count == 1) {
            if(card.colors.first?.rawValue == "B") {
                return .singleLightBlack
            }
            else if (card.colors.first?.rawValue == "W") {
                return .singleLightWhite
            }
            else if (card.colors.first?.rawValue == "U") {
                return .singleLightBlue
            }
            else if (card.colors.first?.rawValue == "R") {
                return .singleLightRed
            }
            else if (card.colors.first?.rawValue == "G") {
                return .singleLightGreen
            }
        }
        
        if(card.colors.isEmpty) {
            return .singleLightLand
        }
        
        return .singleLightArtifact
        
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
    TypeView(card: universes.data.cards[0])
}
