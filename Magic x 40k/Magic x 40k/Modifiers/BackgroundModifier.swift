//
//  BackgroundModifier.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 06/10/2023.
//

import SwiftUI

struct BackgroundModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(
                LinearGradient(colors: [.blueOuter, .blueInner, .blackOuter, .blackOuter], startPoint: .leading, endPoint: .trailing)
                    .opacity(0.15)
            )
            
    }
}
