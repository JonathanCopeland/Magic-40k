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
                    HStack {
                        Text("And They Shall Know No Fear")
                        Spacer()
                        
                        HStack (spacing: 0) {
                            Image(systemName: "1.circle")
                            Image(systemName: "flame.circle.fill")
                        }
                    }
                    
//                    Image("40k-9-and-they-shall-know-no-fear")
//                        .resizable()
//                        .scaledToFit()
//                    
//                    HStack {
//                        Text("Instant")
//                        Spacer()
//                        Image(systemName: "moon.haze.fill")
//                    }
//                    
//                    VStack {
//                        Text("Choose a creature type. Creatures you control of the chosen type get +1/+0 and gain indestructible until end of turn.")
//                            
//                        Text("""
//                             "They are my bulwark against the Terror. They are the Defenders of Humanity. They are my Space Marines." — The Emperor of Mankind
//                             """)
//                        .italic()
//                    }
//                    
//                    Spacer()
//                    
//                    HStack {
//                        VStack (alignment: .leading) {
//                            Text("009/168 U")
//                            Text("40K • EN I GAMES WORKSHOP")
//                        }
//                        .font(.footnote)
//                        Spacer()
//                        VStack (alignment: .trailing) {
//                            Text("C GW")
//                            Text("TM & C 2022 Wizards of the Coast")
//                        }
//                        .font(.footnote)
//                    }
                    
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


