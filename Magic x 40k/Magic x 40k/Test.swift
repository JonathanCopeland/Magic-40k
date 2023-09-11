//
//  Test.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 24/06/2023.
//

import SwiftUI


struct Test: View {
    
    
    var body: some View {
        
        VStack {
            Circle()
                .union(.capsule.inset(by: 100))
                .fill(.blue)

        }
        

        
    }
}

#Preview {
    Test()
}


