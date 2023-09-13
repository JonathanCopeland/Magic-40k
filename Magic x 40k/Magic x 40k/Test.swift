//
//  Test.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 24/06/2023.
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


struct Test: View {
    
//    let gradient = AngularGradient(gradient: Gradient(colors: [.white, .black]), center: .center)
    let gradient = AngularGradient(
        gradient: Gradient(colors: [.black, .black, .black, .white, .white, .white]),
        center: .center,
        angle: .zero
    )
    
    var body: some View {

        ZStack {
            Rectangle()
                .fill(.blue)
                .frame(width: 325, height: 37)
                .clipShape(EllipticalShapeOuter())
            
            Rectangle()
                .fill(gradient)
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
