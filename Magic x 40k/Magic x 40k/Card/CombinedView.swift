//
//  CombinedView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 04/09/2023.
//

import SwiftUI


struct CombinedView: View {
    let card : Card

    var body: some View {
        
        ZStack (alignment: .top) {
            FrameView()
            VStack (alignment: .center, spacing: 0) {
                ZStack (alignment: .top) {
                    ImageView(cardId: card.identifiers.scryfallID)
                        .padding(.top, 36)
                    HeaderView(card: card)
                }
                
                ZStack (alignment: .top) {
                    BodyView(card: card)
                        .padding(.top, 33)
                    GapView()
                    TypeView(card: card)
                    
                }

                FooterView()
            }
            .padding(.top, 20)
        }
    }
}

#Preview {
    CombinedView(card: universes.data.cards[0])
}
