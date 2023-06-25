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
            VStack (alignment: .center, spacing: 0) {
                
                frame_header()
                
                ImageView()
            
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.cardBorder)
                        .frame(width: 323, height: 36)
                    
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.cardBackgroundTextHeading)
                        .strokeBorder(LinearGradient(gradient: Gradient(colors: [.white.opacity(1), .black.opacity(1)]), startPoint: .top, endPoint: .bottom).blendMode(.overlay), lineWidth: 4)
                        .strokeBorder(lineWidth: 1)
                        .frame(width: 319, height: 32)
                        .padding([.top, .bottom], 2)
                        .padding([.leading, .trailing], 2)
                    
                        
                        
                    HStack {
                        Text(card.type)
                            .font(.custom("Matrix", size: 15))
                        
                        Spacer()
                        
                        HStack (spacing: 3) {
                            Image("40k 2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 25.0)
                        }
                        .shadow(radius: 1)
                        
                        
                    }
                    .frame(width: 300)
                    

                }
                

                BodyView()
                
//                Text(card.text)
//                Text(card.flavorText ?? "")
                
            }
            
            
            

        }
        .navigationTitle(card.name)
        .navigationBarTitleDisplayMode(.inline)
        .background(.black)
        
    }
}

#Preview {
    CardView(card: universes.data.cards[0])
}

