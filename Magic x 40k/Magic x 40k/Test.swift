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
              .inset(by: 0.5)
              .stroke(.black, lineWidth: 1)
              .frame(width: 202, height: 198)
            
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 200, height: 198)
              .background(.blue)
            

        }
        
        

        
    }
}

#Preview {
    Test()
}


