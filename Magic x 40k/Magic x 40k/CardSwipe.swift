//
//  CardSwipe.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 12/11/2023.
//


import SwiftUI

struct CardSwipe: View {

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(universes.data.cards) { card in
                    if( ((card.finishes[0].rawValue == "nonfoil" || (card.rarity.rawValue == "mythic" && card.isStarter == true)) && card.subtypes.first != "Saga") ) {
                        CombinedView(card: card)
                            .scrollTransition { content, phase in
                                content
                                    .opacity(phase.isIdentity ? 1 : 0)
                                    .scaleEffect(phase.isIdentity ? 1 : 0.75)
                                    .blur(radius: phase.isIdentity ? 0 : 10)
                            }
                        
                    }
                    
                }
                
            }
            .padding()
            .scrollTargetLayout()
            .frame(maxWidth: .infinity)
            
        }
        .navigationTitle("My Title")
        .scrollTargetBehavior(.viewAligned)
        .safeAreaPadding(.horizontal, 0)
        
    }
    
    
    
    
    
}


#Preview {
    CardSwipe()
}

//
//#Preview {
//    CombinedView(card: universes.data.cards[3])
//}
