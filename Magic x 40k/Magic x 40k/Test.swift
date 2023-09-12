//
//  Test.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 24/06/2023.
//

import SwiftUI

struct EllipticalShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: 9, height: 20))
        return path
    }
}

struct Test: View {
    
    var body: some View {
        Rectangle()
            .fill(.blue)
            .frame(width: 325, height: 37)
            .clipShape(EllipticalShape())
    }
    
}

#Preview {
    Test()
}




//RoundedRectangle(cornerSize: CGSize(width: 10, height: 10), style: .continuous)
//    .fill(.cardBorder)
//    .frame(width: 325, height: 37)
//
//RoundedRectangle(cornerSize: CGSize(width: 8, height: 8), style: .continuous)
//    .fill(.cardBackgroundTextHeading)
//    .strokeBorder(LinearGradient(gradient: Gradient(colors: [.white.opacity(1), .black.opacity(1)]), startPoint: .top, endPoint: .bottom).blendMode(.overlay), lineWidth: 4)
//    .strokeBorder(lineWidth: 1)
//    .frame(width: 319, height: 32)
//    .padding([.top, .bottom], 2)
//    .padding([.leading, .trailing], 2)
