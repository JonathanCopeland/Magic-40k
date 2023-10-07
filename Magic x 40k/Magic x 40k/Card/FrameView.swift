//
//  FrameView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 04/09/2023.
//

import SwiftUI

struct FrameView: View {
    
    let card: Card
    
    var body: some View {
        
        
        
        ZStack (alignment: .top) {
            
            VStack {
                

                VStack {
                    

                    
                    
                    Spacer()
                    
                    
                    
                }
                .frame(width: 330, height: 425)
                .background(
                    Image(getBackground())
                        .resizable()
                )
                .clipShape(
                    .rect(
                        topLeadingRadius: 4,
                        bottomLeadingRadius: 52,
                        bottomTrailingRadius: 52,
                        topTrailingRadius: 4
                    )
                )
                Spacer()
                
            }
            .padding(16)

            

        }
        .frame(width: 361, height: 505)
        .background(.black)
        .cornerRadius(12)
    }
    
    func getBackground() -> String {
        
        let values = card.colorIdentity
        
        
        if(values.count == 3) {
            return "gold"
        }
        
        
                
        if(values.count != 2) {
            switch values.first?.rawValue {
            case "B":
                return "bgBlack"
            case "W":
                return "bgWhite"
            case "R":
                return "bgRed"
            case "G":
                return "bgGreen"
            case "U":
                return "bgBlue"
            default:
                return "artifact"
            }
        }
        
        
        
        return "bgBlue"
    }
    
}

#Preview {
    FrameView(card: universes.data.cards[0])
}
