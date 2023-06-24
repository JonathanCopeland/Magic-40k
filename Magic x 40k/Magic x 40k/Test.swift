//
//  Test.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 24/06/2023.
//

import SwiftUI

struct Test: View {
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom))
                
                
                .frame(width: 380, height: 40)
                
            HStack {
                Text("hello")
                Spacer()
                Text("hello")
                
            }
            .padding()
            
 
        }
        .padding()
    }
}

#Preview {
    Test()
}


