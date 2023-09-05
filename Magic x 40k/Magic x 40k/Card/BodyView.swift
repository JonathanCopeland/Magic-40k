//
//  BodyView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 25/06/2023.
//

import SwiftUI

struct BodyView: View {
    
    let card: Card
    
    var body: some View {
        

        ZStack {
            Rectangle()
                .fill(.cardBorder)
                .frame(width: 311, height: 161)
                
            
            VStack(alignment: .leading) {
                Text(card.text)
                    .font(.custom("Times New Roman", size: 15))
                    
                if(card.flavorText != nil) {
                    Divider()
                }
                
                Text(card.flavorText ?? "")
                .font(.custom("Times New Roman", size: 15))
                .italic()
                
                
                Spacer()
            }
            .padding(8)
            .background(.cardBackgroundTextBody)
            .frame(width: 305, height: 156)
            .padding(4)
            
            
        }



  

    }
}

#Preview {
    BodyView(card: universes.data.cards[0])
}
