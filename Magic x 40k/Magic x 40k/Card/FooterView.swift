//
//  FooterView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 04/09/2023.
//

import SwiftUI

import SwiftUI

struct FooterView: View {
    
    let card: Card
    
    var body: some View {
        HStack (spacing: 4) {
            VStack (alignment: .leading, spacing: 0) {
                Spacer()

                Text("\(card.number)/168")
                    .font(.system(size: 9.0))
                
                Text("40K • EN")
                    .font(.system(size: 9.0))
                Spacer()

            }
            VStack (alignment: .leading, spacing: 1) {
                Spacer()
                Text(rarityIndicator())
                    .font(.system(size: 9.0))
                    
                Text("\(card.artist)")
                    .textCase(.uppercase)
                    .font(.custom("Matrix", size: 11))

                Spacer()
                    
            }
            Spacer()
            VStack (alignment: .trailing) {
                Spacer()

                Text("C GW")
                    .font(.system(size: 7.0, design: .serif))
                Text("TM & C 2022 Wizards of the Coast")
                    .font(.system(size: 7.0, design: .serif))
                    
                Spacer()

            }
        }
        .foregroundColor(.white)
        .frame(width: 305, height: 32)
        .background(.black)
    }
    
    func rarityIndicator() -> String {
        if (card.rarity.rawValue == "uncommon") {
            return "U"
        }
        else if (card.rarity.rawValue == "rare") {
            return "R"
        }
        else if (card.rarity.rawValue == "mythic") {
            return "M"
        }
        
        return ""
    }
}

#Preview {
    FooterView(card: universes.data.cards[2])
}


//Text("009/168 U")
