//
//  MagicCardView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 22/06/2023.
//

import SwiftUI

struct MagicCardView: View {
    var body: some View {

        ZStack (alignment: .top) {
            VStack {
                VStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.blue)
                            .strokeBorder(LinearGradient(gradient: Gradient(colors: [.white.opacity(0.3), .black.opacity(0.3)]), startPoint: .top, endPoint: .bottom), lineWidth: 4)

                            .strokeBorder(lineWidth: 1)
                            .frame(width: .infinity, height: 32)

                        HStack {
                            Text("And they shall know no fear")
                                .font(.custom("Matrix", size: 18))
                            
                            Spacer()
                            
                            HStack (spacing: 0) {
                                Image(systemName: "1.circle")
                                Image(systemName: "flame.circle.fill")
                            }
                        }
                        .padding([.all], 10)

                    }
                    .padding(4)
                    
                    Image("40k-9-and-they-shall-know-no-fear")
                        .resizable()
                        .scaledToFit()
                    
                    HStack {
                        Text("Instant")
                        Spacer()
                        Image(systemName: "moon.haze.fill")
                    }
                    
                    VStack {
                        Text("Choose a creature type. Creatures you control of the chosen type get +1/+0 and gain indestructible until end of turn.")
                            
                        Text("""
                             "They are my bulwark against the Terror. They are the Defenders of Humanity. They are my Space Marines." — The Emperor of Mankind
                             """)
                        .italic()
                    }
                    
                    Spacer()
                    
                    HStack {
                        VStack (alignment: .leading) {
                            Text("009/168 U")
                            Text("40K • EN I GAMES WORKSHOP")
                        }
                        .font(.footnote)
                        Spacer()
                        VStack (alignment: .trailing) {
                            Text("C GW")
                            Text("TM & C 2022 Wizards of the Coast")
                        }
                        .font(.footnote)
                    }
                    
                }
                .frame(width: 330, height: 425)
                .background(.white)
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
}

#Preview {
    MagicCardView()
}


