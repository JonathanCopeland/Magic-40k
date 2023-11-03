//
//  GradientFill.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 06/10/2023.
//

import SwiftUI
import UIKit

struct GradientFill: View {
    
    let card: Card

    
    var body: some View {
        
        Rectangle()
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: getColors()),
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
        
    }
    
    func getColors() -> [SwiftUI.Color] {
        
        if(card.colors.count == 3) {
            return [.singleGold]
        }
        
        if(card.colors.count == 2) {
            if(card.colors.first?.rawValue == "U" && card.colors.last?.rawValue == "B") {
                return [.ubBlackOuter, .ubBlackInner, .ubBlueInner, .ubBlueOuter]
            }
            else if(card.colors.first?.rawValue == "G" && card.colors.last?.rawValue == "W") {
                return [.gwGreenOuter, .gwGreenInner, .gwWhiteInner, .gwGreenOuter]
            }
            else if(card.colors.first?.rawValue == "W" && card.colors.last?.rawValue == "B") {
                return [.wbWhiteOuter, .wbWhiteInner, .wbBlackInner, .wBlackOuter]
            }
            else if(card.colors.first?.rawValue == "W" && card.colors.last?.rawValue == "U") {
                return [.wuWhiteOuter, .wuWhiteInner, .wuBlueInner, .wuBlueOuter]
            }
            else if(card.colors.first?.rawValue == "R" && card.colors.last?.rawValue == "W") {
                return [.rwRedOuter, .rwRedInner, .rwWhiteInner, .rwWhiteOuter]
            }
            else if(card.colors.first?.rawValue == "B" && card.colors.last?.rawValue == "R") {
                return [.brBlackOuter, .brBlackInner, .brRedInner, .brRedOuter]
            }
            else if(card.colors.first?.rawValue == "B" && card.colors.last?.rawValue == "G") {
                return [.bgBlackOuter, .bgBlackInner, .bgGreenInner, .bgGreenOuter]
            }
            else if(card.colors.first?.rawValue == "U" && card.colors.last?.rawValue == "R") {
                return [.urBlueOuter, .urBlueInner, .urRedInner, .urRedOuter]
            }
            else if(card.colors.first?.rawValue == "G" && card.colors.last?.rawValue == "U") {
                return [.guGreenOuter, .guGreenInner, .guBlueInner, .guBlueOuter]
            }
            else if(card.colors.first?.rawValue == "R" && card.colors.last?.rawValue == "G") {
                return [.rgRedOuter, .rgRedInner, .rgGreenInner, .rgGreenOuter]
            }
            
        }
        
        if(card.colors.count == 1) {
            if(card.colors.first?.rawValue == "B") {
                return [.singleBlack]
            } 
            else if (card.colors.first?.rawValue == "W") {
                return [.singleWhite]
            }
            else if (card.colors.first?.rawValue == "U") {
                return [.singleBlue]
            }
            else if (card.colors.first?.rawValue == "R") {
                return [.singleRed]
            }
            else if (card.colors.first?.rawValue == "G") {
                return [.singleGreen]
            }
        }
        
        if(card.colors.isEmpty) {
            return [.singleLand]
        }
        
        return [.singleArtifact]
        
    }
    
    
}

#Preview {
    GradientFill(card: universes.data.cards[0])
}
