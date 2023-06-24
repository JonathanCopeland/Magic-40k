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
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.blue)
                        .strokeBorder(LinearGradient(gradient: Gradient(colors: [.white.opacity(0.3), .black.opacity(0.3)]), startPoint: .top, endPoint: .bottom), lineWidth: 4)

                        .strokeBorder(lineWidth: 1)
                        .frame(width: .infinity, height: 32)
                    
                        
                        
                    HStack {
                        Text(card.name)
                            .font(.custom("Matrix", size: 18))
                        
                        Spacer()
                        
                        HStack (spacing: 0) {
                            Image(systemName: "1.circle")
                            Image(systemName: "flame.circle.fill")
                        }
                    }
                    .padding([.all], 10)

                }
                
                Image("40k-9-and-they-shall-know-no-fear")
                    .resizable()
                    .scaledToFit()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.blue)
                        .strokeBorder(LinearGradient(gradient: Gradient(colors: [.white.opacity(0.3), .black.opacity(0.3)]), startPoint: .top, endPoint: .bottom), lineWidth: 4)

                        .strokeBorder(lineWidth: 1)
                        .frame(width: .infinity, height: 32)
                    
                        
                        
                    HStack {
                        Text(card.type)
                            .font(.custom("Matrix", size: 18))
                        
                        Spacer()
                        
                        HStack (spacing: 0) {
                            Image(systemName: "trophy.fill")
                        }
                    }
                    .padding([.all], 10)

                }
                Text(card.text)
                Text(card.flavorText ?? "")
                
            }
            .padding()
            
            

        }
        .navigationTitle(card.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    CardView(card: universes.data.cards[0])
}

