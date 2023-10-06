//
//  GradientFill.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 06/10/2023.
//

import SwiftUI

struct GradientFill: View {
    
    let card: Card
    
    
    var body: some View {
        
        Rectangle()
            .fill(
                LinearGradient(colors: [.blueOuter, .blueInner, .blackOuter, .blackOuter], startPoint: .leading, endPoint: .trailing)
            )
        
    }
    
//    func getColours() -> [Color] {
//        var colours: [Color] = []
//        
//        
//        for color in card.colors {
//            colours.append(color)
//        }
//        
//        if(colours.count == 1) {
//            return [.blueOuter]
//        }
//        else {
//            return [Color("blueOuter"), .blueInner, .blackOuter, .blackOuter]
//        }
// 
//    }
}

#Preview {
    GradientFill(card: universes.data.cards[0])
}
