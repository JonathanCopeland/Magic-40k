//
//  ShadowViews.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 06/10/2023.
//

import SwiftUI

class ShadowViews{

        lazy var customStops = [
            Gradient.Stop(color: .white, location: 0),
            Gradient.Stop(color: .black, location: 0.04),
            Gradient.Stop(color: .black, location: 0.52),
            Gradient.Stop(color: .white, location: 0.56),
            Gradient.Stop(color: .white, location: 1),        
        ]

        lazy var gradient = Gradient(stops: customStops)
        lazy var shadowGradient = AngularGradient(gradient: gradient, center: .center, startAngle: .degrees(0), endAngle: .degrees(332))

        let customStops2 = [
            Gradient.Stop(color: .white, location: 0),
            Gradient.Stop(color: .black.opacity(0), location: 0.04),
            Gradient.Stop(color: .black.opacity(0), location: 0.52),
            Gradient.Stop(color: .white, location: 0.56),
            Gradient.Stop(color: .white, location: 1),
        ]

        lazy var gradient2 = Gradient(stops: customStops2)
        lazy var shadowGradient2 = AngularGradient(gradient: gradient2, center: .center, startAngle: .degrees(0), endAngle: .degrees(332))
    
    
    // Body view
    
    
    lazy var customStops3 = [
        Gradient.Stop(color: .black, location: 0),
        Gradient.Stop(color: .white, location: 0.04),
        Gradient.Stop(color: .white, location: 0.52),
        Gradient.Stop(color: .black, location: 0.56),
        Gradient.Stop(color: .black, location: 1),
    ]

    lazy var gradient3 = Gradient(stops: customStops3)
    lazy var shadowGradient3 = AngularGradient(gradient: gradient3, center: .center, startAngle: .degrees(0), endAngle: .degrees(332))

    let customStops4 = [
        Gradient.Stop(color: .black, location: 0),
        Gradient.Stop(color: .white.opacity(0), location: 0.04),
        Gradient.Stop(color: .white.opacity(0), location: 0.52),
        Gradient.Stop(color: .black, location: 0.56),
        Gradient.Stop(color: .black, location: 1),
    ]

    lazy var gradient4 = Gradient(stops: customStops4)
    lazy var shadowGradient4 = AngularGradient(gradient: gradient4, center: .center, startAngle: .degrees(0), endAngle: .degrees(332))
    
        
        
}

