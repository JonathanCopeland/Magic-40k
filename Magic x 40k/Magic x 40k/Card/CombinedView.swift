//
//  CombinedView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 04/09/2023.
//

import SwiftUI


struct CombinedView: View {
    let card : Card
    
    @State var dragLocation = CGPoint(x: 0, y: 0) // Coordinates of the drag gesture
    @State var isDragging = false

    var width: CGFloat = 340
    var height: CGFloat = 240

    var intensity: CGFloat = 5

    // Generic Linear Scale
    func scale(inputMin: CGFloat, inputMax: CGFloat, outputMin: CGFloat, outputMax: CGFloat, value: CGFloat) -> CGFloat {
        return outputMin + (outputMax - outputMin) * (value - inputMin) / (inputMax - inputMin)
    }
    
    var body: some View {
        
        
        
        VStack(alignment: .center) {
            ZStack (alignment: .top) {
                FrameView()
                    .shadow(radius: 40)
                
                VStack (alignment: .center, spacing: 0) {
                    ZStack (alignment: .top) {
                        ImageView(cardId: card.identifiers.scryfallID)
                            .padding(.top, 36)
                        HeaderView(card: card)
                    }
                    
                    ZStack (alignment: .top) {
                        BodyView(card: card)
                            .padding(.top, 33)
                        GapView()
                        TypeView(card: card)
                        
                    }

                    FooterView()
                }
                .padding(.top, 20)
                
            }
            
        }
        .navigationTitle("\(card.name)")
        .navigationBarTitleDisplayMode(.inline)
        .rotation3DEffect(.degrees(dragLocation.x), axis: (x: 0, y: 1, z: 0)) // Horizontal dragging tilts along Y Axis
        .rotation3DEffect(.degrees(dragLocation.y), axis: (x: 1, y: 0, z: 0)) // Vertical dragging tilts along X Axis
        .gesture(
            DragGesture(minimumDistance: 0.0)
                .onChanged { gesture in
                    let normalizedX = scale(inputMin: 0, inputMax: width - 4, outputMin: -intensity, outputMax: intensity, value: gesture.location.x)
                    let normalizedY = scale(inputMin: 0, inputMax: height - 4, outputMin: intensity, outputMax: -intensity, value: gesture.location.y)

                    print(normalizedX, normalizedY)

                    withAnimation(isDragging ? .interactiveSpring() : .spring()) {
                        dragLocation = CGPoint(x: normalizedX, y: normalizedY)
                    }
                    isDragging = true
                }
                .onEnded { _ in
                    isDragging = false
                    withAnimation(.spring()) {
                        dragLocation = .zero
                    }
                }
        )


    }
}

#Preview {
    CombinedView(card: universes.data.cards[0])
}
