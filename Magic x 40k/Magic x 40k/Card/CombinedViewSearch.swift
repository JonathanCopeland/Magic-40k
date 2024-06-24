//
//  CombinedViewSearch.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 28/12/2023.
//

//
//  CombinedView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 04/09/2023.
//

import SwiftUI
import SwiftData


struct CombinedViewSearch: View {

    @Environment(\.modelContext) var modelContext // call temporary memory storage



    let card : Card
    
    @State var dragLocation = CGPoint(x: 0, y: 0) // Coordinates of the drag gesture
    @State var isDragging = false
    

    var width: CGFloat = 340
    var height: CGFloat = 240
    
    @State private var heartIsSet = false

    var intensity: CGFloat = 5

    // Generic Linear Scale
    func scale(inputMin: CGFloat, inputMax: CGFloat, outputMin: CGFloat, outputMax: CGFloat, value: CGFloat) -> CGFloat {
        return outputMin + (outputMax - outputMin) * (value - inputMin) / (inputMax - inputMin)
    }
    
    var body: some View {

        
            ZStack (alignment: .top) {
                FrameView(card: card)
                    .shadow(radius: 31)
                

                VStack (alignment: .center, spacing: 0) {
                    ZStack (alignment: .top) {
                        ImageView(card: card)
                            .padding(.top, 33)
                        
                        HeaderView(card: card)
                        
                        ZStack (alignment: .top) {
                            TypeView(card: card)
                                .padding(.top, 29)
                            BodyView(card: card)
                                .padding(.top, 60.9)
                            
                        }
                        
                        .padding(.top, 229)
                    }
                    .compositingGroup()
                    .shadow(
                        color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.7),
                        radius: 0.4,
                        x: -2,
                        y:  1
                    )
                    .shadow(
                        color: .white.opacity(0.3),
                        radius: 0.4,
                        x: 2,
                        y:  -1.5
                    )
                    
                    

                    
                    FooterView(card: card)
                    
                    if(card.power != nil) {
                        Size(card: card)
                            .padding(.top, -45)
                            .padding(.leading, 243)
                            .scaleEffect(1.1)
                    }
                }
                .padding(.top, 20)
            }
        .scaleEffect(1.1)
        .navigationTitle("\(card.name)")
        .navigationBarTitleDisplayMode(.inline)

        
        

        

    }
    

    
}

#Preview {
    CombinedViewSearch(card: universes.data.cards[3])
}






