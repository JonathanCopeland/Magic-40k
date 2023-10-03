//
//  TypeView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 04/09/2023.
//

import SwiftUI

struct EllipticalShapeOuter2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width:6, height: 20))
        return path
    }
}


// The black stroke border
struct EllipticalShapeOuterStroke2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: 5, height: 31))
        return path
    }
}

struct EllipticalShapeInner2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: 4, height: 28))
        return path
    }
}

struct EllipticalShapeInnerPlate2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: 3, height: 24))
        return path
    }
}

struct TypeView: View {
    
    
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
            
            
            // 325 / 30
            // 323 / 28
            // 321 / 26
            // 318 / 23
            
            ZStack {
                Rectangle()
                    .fill(
                        LinearGradient(colors: [.blueOuter, .blueInner, .blackOuter, .blackOuter], startPoint: .leading, endPoint: .trailing)
                    )
                    .frame(width: 325, height: 30)
                    .clipShape(EllipticalShapeOuter2())
                
                Rectangle()
                    .fill(.black)
                    .frame(width: 321, height: 26)
                    .clipShape(EllipticalShapeOuterStroke2())
                
                
                Rectangle()
                    .fill(shadowGradient)
                    .frame(width: 319, height: 24)
                    .clipShape(EllipticalShapeInner2()).opacity(0.3)
                    
                
                Rectangle()
                    .fill(shadowGradient2)
                    .frame(width: 319, height: 24)
                    .clipShape(EllipticalShapeInner2())
                
                
                Rectangle()
                    .fill(.cardBackgroundTextHeading)
                    .frame(width: 316, height: 21)
                    .clipShape(EllipticalShapeInnerPlate2())
            }
            
                
                
            HStack {
                Text(card.type)
                    .font(.custom("Matrix", size: 16))
                    .padding(.top, 2)
                
                Spacer()
                
                RarityView(rarity: card.rarity.rawValue)
                    .scaleEffect(1.2)
                
                
            }
            .frame(width: 308, height: 14)
            .padding([.all], 10)
            

        }


        

    }
        
}


#Preview {
    TypeView(card: universes.data.cards[0])
}
