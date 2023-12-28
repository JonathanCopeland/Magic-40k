//
//  CardSwipe.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 12/11/2023.
//


import SwiftUI

struct CardSwipe: View {
    
    @State private var sortedCards = universes.data.cards


    var body: some View {
        NavigationView {
                ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(sortedCards) { card in
                                if( ((
                                    card.finishes[0].rawValue == "nonfoil" ||
                                    (
                                        card.rarity.rawValue == "mythic"
                                        && card.isStarter == true))
                                     && (
                                        card.subtypes.first != "Saga" &&
                                        card.types.first?.rawValue != "Land" &&
                                        card.types.last?.rawValue != "Land"
                                     )
                                ) ) {
                                    NavigationLink {
                                        CombinedViewSearch(card: card)
                                    }
                                    label: {
                                        VStack {
                                            CombinedView(card: card)
                                        }
                                        .contentShape(Rectangle())
                                        
                                        
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                    
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
                    }
            


            .navigationTitle("Cards")
            .toolbar {
                
                Button {
                    
                    sortedCards.shuffle()
                    withAnimation {
                        self.sortedCards = sortedCards
                    }

                } label: {
                    Label("Change sort order", systemImage: "shuffle")
                }
   

            }

            .scrollTargetBehavior(.viewAligned)
        }
    }
    
    
}


#Preview {
    CardSwipe()
}


