//
//  FooterView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 04/09/2023.
//

import SwiftUI

import SwiftUI

struct FooterView: View {
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                Text("009/168 U")
                    .font(.caption2)
                Text("40K • EN I GAMES WORKSHOP")
                    .font(.caption2)
            }
            .font(.footnote)
            Spacer()
            VStack (alignment: .trailing) {
                Text("C GW")
                    .font(.caption2)
                Text("TM & C 2022 Wizards of the Coast")
                    .font(.caption2)
            }
            .font(.footnote)
        }
        .foregroundColor(.white)
        .frame(width: 305, height: 32)
        .background(.black)
    }
}

#Preview {
    FooterView()
}
