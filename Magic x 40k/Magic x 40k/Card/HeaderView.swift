//
//  HeaderView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 04/09/2023.
//

import SwiftUI

struct EllipticalShapeOuter: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: 9, height: 20))
        return path
    }
}

struct EllipticalShapeInner: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: 8, height: 15))
        return path
    }
}

struct EllipticalShapeInnerPlate: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: 6, height: 19))
        return path
    }
}

struct HeaderView: View {
    
    
    let card: Card
    
    var body: some View {
        
        ZStack {
            
//            RoundedRectangle(cornerSize: CGSize(width: 10, height: 10), style: .continuous)
//                .fill(.cardBorder)
//                .frame(width: 325, height: 37)
//            
//            RoundedRectangle(cornerSize: CGSize(width: 8, height: 8), style: .continuous)
//                .fill(.cardBackgroundTextHeading)
//                .strokeBorder(LinearGradient(gradient: Gradient(colors: [.white.opacity(1), .black.opacity(1)]), startPoint: .top, endPoint: .bottom).blendMode(.overlay), lineWidth: 4)
//                .strokeBorder(lineWidth: 1)
//                .frame(width: 319, height: 32)
//                .padding([.top, .bottom], 2)
//                .padding([.leading, .trailing], 2)
//            
            
            let customStops = [
                Gradient.Stop(color: .white, location: 0),
                Gradient.Stop(color: .black, location: 0.04),
                Gradient.Stop(color: .black, location: 0.52),
                Gradient.Stop(color: .white, location: 0.56),
                Gradient.Stop(color: .white, location: 1),        ]

            let gradient = Gradient(stops: customStops)
            let shadowGradient = AngularGradient(gradient: gradient, center: .center, startAngle: .degrees(0), endAngle: .degrees(332))

            let customStops2 = [
                Gradient.Stop(color: .white, location: 0),
                Gradient.Stop(color: .black.opacity(0), location: 0.04),
                Gradient.Stop(color: .black.opacity(0), location: 0.52),
                Gradient.Stop(color: .white, location: 0.56),
                Gradient.Stop(color: .white, location: 1),        ]

            let gradient2 = Gradient(stops: customStops)
            let shadowGradient2 = AngularGradient(gradient: gradient, center: .center, startAngle: .degrees(0), endAngle: .degrees(332))
            
            
            ZStack {
                Rectangle()
                    .fill(.cardBorder)
                    .frame(width: 325, height: 37)
                    .clipShape(EllipticalShapeOuter())
                
                Rectangle()
                    .fill(shadowGradient)
                    .frame(width: 321, height: 34)
                    .clipShape(EllipticalShapeInner()).opacity(0.3)
                    
                
                Rectangle()
                    .fill(shadowGradient2)
                    .frame(width: 321, height: 34)
                    .clipShape(EllipticalShapeInner())
                    .blendMode(.overlay)
                
                
                Rectangle()
                    .fill(.cardBackgroundTextHeading)
                    .frame(width: 317, height: 30)
                    .clipShape(EllipticalShapeInnerPlate())
            }
            
                
                
            HStack {
                Text(card.name)
                    .font(.custom("Matrix", size: 15))
                
                Spacer()
                
                HStack (spacing: 3) {
                    Image("1")
                        .resizable()
                        .frame(width: 14.0, height: 14.0)
                    Image("W")
                        .resizable()
                        .frame(width: 14.0, height: 14.0)
                }
                .shadow(radius: 1)
                
                
            }
            .frame(width: 300, height: 14)
            .padding([.all], 10)

        }

        

    }
        
}

#Preview {
    HeaderView(card: universes.data.cards[0])
}
