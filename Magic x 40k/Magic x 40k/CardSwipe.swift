//
//  CardSwipe.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 12/11/2023.
//


import SwiftUI

struct CardSwipe: View {
    
    

    var body: some View {
        NavigationView {
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
                    .padding(35)
                    .scrollTargetLayout()
                    .frame(maxWidth: .infinity)
                    .padding(.bottom, 100)
                }

            

            .navigationTitle("Cards")
            .scrollTargetBehavior(.viewAligned)
            .padding(.top, 80)
            .edgesIgnoringSafeArea(.all)
        }
    }
}


#Preview {
    CardSwipe()
}


