//
//  GapView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 05/09/2023.
//

import SwiftUI

struct GapView: View {
    var body: some View {
        Rectangle()
            .fill(.cardBorder)
            .frame(width: 313, height: 5)
    }
}

#Preview {
    GapView()
}
