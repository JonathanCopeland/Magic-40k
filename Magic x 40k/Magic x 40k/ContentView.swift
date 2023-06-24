//
//  ContentView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 17/06/2023.
//

import SwiftUI

let universes: UniversesBeyond = Bundle.main.decode("40k.json")

struct ContentView: View {
        
    var body: some View {
        
        NavigationView {
            List(universes.data.cards) { card in
                if(card.finishes[0].rawValue == "nonfoil") {
                    NavigationLink {
                        CardView(card: card)
                    } label: {
                        Text(card.name)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

