//
//  ImageView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 25/06/2023.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(.cardBorder)
                .frame(width: 313, height: 206)
            
            Rectangle()
                .foregroundColor(.clear)
                .background(
                    Image("40k-9-and-they-shall-know-no-fear")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 307, height: 200)
                        .clipped()
                        .border(.black)
                        .padding(2)
                )
                
        }
        .frame(width: 313, height: 206)
        
        

    }
}

#Preview {
    ImageView()
}
