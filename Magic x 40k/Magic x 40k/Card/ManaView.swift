//
//  ManaView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 08/10/2023.
//

import SwiftUI

struct ManaView: View {
    
    let card: Card
    
    var body: some View {
        getManaCost()
    }
    
    func getManaCost() -> some View {
        let str = card.manaCost ?? ""
        let array = str.filter { $0 != "{" && $0 != "}" }
        

            return HStack (spacing: 3) {
                ForEach(0 ..< array.count, id: \.self) { i in
                    Image("\(array[i])")
                        .resizable()
                        .frame(width: 15.0, height: 15.0)
                        .shadow(
                            color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(1),
                            radius: 0,
                            x: -0.5,
                            y:  1
                        )
                }
            }
        
    }
}


#Preview {
    ManaView(card: universes.data.cards[0])
}


