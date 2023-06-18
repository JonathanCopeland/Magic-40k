//
//  CardView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 18/06/2023.
//

import SwiftUI

struct CardView: View {
    
    let card : Card
    
    var body: some View {
        
        ScrollView {
            VStack (alignment: .leading) {
                Text(card.type)
                Text(card.text)
                Text(card.flavorText ?? "")
            }
        }
        .navigationTitle(card.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    CardView(card: universes.data.cards[0])
}

