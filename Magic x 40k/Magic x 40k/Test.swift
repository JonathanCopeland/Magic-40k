//
//  Test.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 24/06/2023.
//

import SwiftUI




struct Test: View {

    var body: some View {
        
        let customStops = [
            Gradient.Stop(color: .white, location: 0),
            Gradient.Stop(color: .black, location: 0.04),
            Gradient.Stop(color: .black, location: 0.52),
            Gradient.Stop(color: .white, location: 0.56),
            Gradient.Stop(color: .white, location: 1),        ]

        let gradient = Gradient(stops: customStops)
        let shadowGradient = AngularGradient(gradient: gradient, center: .center, startAngle: .degrees(0), endAngle: .degrees(332))

        ZStack {
            Rectangle()
                .fill(.blue)
                .frame(width: 325, height: 37)
                .clipShape(EllipticalShapeOuter())
            
            Rectangle()
                .fill(shadowGradient)
                .frame(width: 321, height: 34)
                .clipShape(EllipticalShapeInner())
            
            
            Rectangle()
                .fill(.white)
                .frame(width: 317, height: 30)
                .clipShape(EllipticalShapeInnerPlate())
        }
        
            


        


    }
    
}

#Preview {
    Test()
}


//
//```swift
//let gradient = AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue]), center: .center)
//```
//
//2. **Attaching to a Rectangle:** You can attach this angular gradient to a rectangle as a fill. Here's how you can do that:
//
//```swift
//Rectangle()
//   .fill(gradient)
//```
//
//So, putting it all together, here's how you can create a rectangle with an angular gradient:
//
//```swift
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        let gradient = AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue]), center: .center)
//        
//        return Rectangle()
//            .fill(gradient)
//            .frame(width: 200, height: 200)
//   }
//}
//```

