//
//  Size.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 10/11/2023.
//

import SwiftUI


struct Size: View {
    let card : Card
    
    
    var body: some View {
        
        ZStack {

            Rectangle()
                .fill(getColors())
                .frame(width: 52, height: 27)
                .clipShape(EllipticalShapeOuterStroke2())
            
            Rectangle()
                .fill(ShadowViews.init().shadowGradient)
                .frame(width: 52, height: 27)
                .clipShape(EllipticalShapeOuterStroke2()).opacity(0.5)
            

            Rectangle()
                .fill(getColors())
                .frame(width: 47, height: 22)
                .clipShape(EllipticalShapeInnerPlate2())
            
            
            Rectangle()
                .fill(ShadowViews.init().shadowGradient3)
                .frame(width: 47, height: 22)
                .clipShape(EllipticalShapeInnerPlate2()).opacity(0.5)
                
            Rectangle()
                .fill(.white)
                .frame(width: 42, height: 18)
                .clipShape(EllipticalShapeInnerPlate2())
            
            
    
            Rectangle()
                .fill(getColors()).opacity(0.7)
                .frame(width: 42, height: 18)
                .clipShape(EllipticalShapeInnerPlate2())
            
            
            
            VStack {}
                .frame(width: 42, height: 18)
                .background(
                    Image(getBGBackground())
                        .opacity(0.4)
                        .blendMode(.softLight)
                )
                .clipShape(
                    EllipticalShapeInnerPlate()
                )
            
            HStack(spacing: 1) {
                Text(card.power ?? "")
                    .font(.custom("Matrix", size: 20))
                Text("/")
                    .font(.custom("Matrix", size: 20))
                    .padding(.top, 5)
                Text(card.toughness ?? "")
                    .font(.custom("Matrix", size: 20))
            }
            .padding(.bottom, 3)
            

            
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
    Size(card: universes.data.cards[44])
}
