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
        path.addRoundedRect(in: rect, cornerSize: CGSize(width:6, height: 20))
        return path
    }
}


// The black stroke border
struct EllipticalShapeOuterStroke: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: 5, height: 31))
        return path
    }
}

struct EllipticalShapeInner: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: 4, height: 28))
        return path
    }
}

struct EllipticalShapeInnerPlate: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: 3, height: 24))
        return path
    }
}

struct HeaderView: View {
    
    
    let card: Card
    
    var body: some View {
        
        ZStack {
            
    
            
            
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

            let gradient2 = Gradient(stops: customStops2)
            let shadowGradient2 = AngularGradient(gradient: gradient2, center: .center, startAngle: .degrees(0), endAngle: .degrees(332))
            
            
            
            ZStack {
                Rectangle()
                    .fill(
                        LinearGradient(colors: [.blueOuter, .blueInner, .blackOuter, .blackOuter], startPoint: .leading, endPoint: .trailing)
                    )
                    .frame(width: 325, height: 32)
                    .clipShape(EllipticalShapeOuter())
                
                Rectangle()
                    .fill(.black)
                    .frame(width: 321, height: 28)
                    .clipShape(EllipticalShapeOuterStroke())
                
            
                Rectangle()
                    .fill(shadowGradient)
                    .frame(width: 319, height: 26)
                    .clipShape(EllipticalShapeInner()).opacity(0.3)
                    
                
                Rectangle()
                    .fill(shadowGradient2)
                    .frame(width: 319, height: 26)
                    .clipShape(EllipticalShapeInner())
                
                
                Rectangle()
                    .fill(.cardBackgroundTextHeading)
                    .frame(width: 315, height: 22)
                    .clipShape(EllipticalShapeInnerPlate())
            }
            
                
                
            HStack {
                Text(card.name)
                    .font(.custom("Matrix", size: 19))
                    .padding(.top, 2)
                
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
            .frame(width: 303, height: 14)
            .padding([.all], 10)
            

        }


        

    }
        
}

#Preview {
    HeaderView(card: universes.data.cards[0])
}
