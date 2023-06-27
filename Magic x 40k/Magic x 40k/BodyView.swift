//
//  BodyView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 25/06/2023.
//

import SwiftUI

struct BodyView: View {
    var body: some View {
        
        // TODO: Use this code
//        Text("Live long and prosper")
//            .frame(width: 300, height: 300, alignment: .topLeading)
//            .offset(x: 12, y: 12)
//            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
//        
        ZStack {
            Rectangle()
                .fill(.cardBorder)
                .frame(width: 313, height: 164)
                
            
            VStack(alignment: .leading) {
                Text("Choose a creature type. Creatures you control of the chosen type get +1/+0 and gain indestructible until end of turn.")
                    .font(.custom("Times New Roman", size: 15))
                    
                
                Divider()
                
                Text("""
                     "They are my bulwark against the Terror. They are the Defenders of Humanity. They are my Space Marines." — The Emperor of Mankind
                     """)
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
    BodyView()
}
