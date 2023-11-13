//
//  CardSwipe.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 12/11/2023.
//




import SwiftUI


func widthScale(index: Int, selected: Int) -> CGFloat {
    return UIScreen.main.bounds.width - 140
}

func heightScale(index: Int, selected: Int) -> CGFloat {
    return UIScreen.main.bounds.width - 80
}


func scaleEff(index: Int, selected: Int, showing: Int) -> CGFloat {
    if index <= selected {
        return scale(minRange: CGFloat(selected - showing), maxRange: CGFloat(selected), minDomain: 0.7, maxDomain: 1, value: CGFloat(index))
    } else {
        return 1
    }
    
    
}




func offsetEffect(index: Int, selected: Int, showing: Int, isFocused: Bool) -> CGFloat {
    
    let offset = -220.0
    if index <= selected {
        if isFocused {
            if index == selected - showing {
                return offset + 20.0
            } else {
                return scale(minRange: CGFloat(selected - showing), maxRange: CGFloat(selected), minDomain: offset, maxDomain: 0, value: CGFloat(index))
            }
        } else {
            return 0
        }
        
        
    } else {
        return 670
    }
    
    
}




func opacityScale(index: Int, selected: Int) -> CGFloat {
    if index > selected {
        return 1
    } else {
        return 1
    }
}

struct CardAnimate: View {
    @State private var cardOffsetY = 0.0
    @Binding var selected: Int
    @Binding var offsetY: Double
    var index: Int
    var showing: Int
    var isFocused: Bool
    
    
    
    var body: some View {
        

        CombinedView(card: universes.data.cards[index])
            .frame(width: widthScale(index: index, selected: selected), height: heightScale(index: index, selected: selected))
            .offset(y: offsetEffect(index: index, selected: selected, showing: showing, isFocused: isFocused))
//            .brightness(-1 + brightnessScale(index: index, selected: selected, showing: showing) + 0.5)
            .scaleEffect(scaleEff(index: index, selected: selected, showing: showing))
            .opacity(opacityScale(index: index, selected: selected))
            .offset(y: cardOffsetY)
            .gesture(
                    DragGesture()
                        .onChanged { gesture in
                            cardOffsetY = gesture.translation.height
                        }
                        .onEnded { _ in
                            withAnimation(.interpolatingSpring(mass: 1, stiffness: 100, damping: 60, initialVelocity: 3)) {
                                
                                if cardOffsetY > 100 {
                                    withAnimation(.interpolatingSpring(mass: 1, stiffness: 100, damping: 60, initialVelocity: 3)) {
                                        selected -= 1
                                        offsetY -= 1.0
                                    }
                                    
                                } else if cardOffsetY < -100 {
                                    withAnimation(.interpolatingSpring(mass: 1, stiffness: 100, damping: 60, initialVelocity: 3)) {
                                        selected += 1
                                        offsetY += 1.0
                                    }
                                }
                                withAnimation(.interpolatingSpring(mass: 1, stiffness: 100, damping: 60, initialVelocity: 3)) {
                                cardOffsetY = 0
                                }
                            }
                            
                        }
                )
    }
}

struct CardSwipe: View {
    @State private var isFocused = true
    @State private var selected = 40
    @State private var offsetY = 0.0
    @State private var isDragging = false
    
    var list = Array(repeating: 0, count: 90)
    let showing = 5
    func dragScale(value: CGFloat) -> CGFloat {
        
        return scale(minRange: 0.0, maxRange: 716, minDomain: 0, maxDomain: CGFloat(list.count), value: value)
    }


    
    
    
    var body: some View {
        ZStack{

            ForEach(Array(list.enumerated()), id: \.offset) { index, element in
                let startNum = selected - showing
                let endNum = selected + 2
                let range = startNum...endNum
                
                ZStack {
                    
                    
                    if range.contains(index) {
                        ZStack {
                            CardAnimate(selected: $selected, offsetY: $offsetY, index: index, showing: showing, isFocused: isFocused)
                        }
                    }
                }.offset(y: isFocused ? 0 : -60)
                    .onTapGesture{
                        withAnimation(.interpolatingSpring(mass: 1, stiffness: 100, damping: 60, initialVelocity: 3)) {
                            isFocused.toggle()
//                                                selected -= 1
                        }
                        
                    }
                
                
            }
            
        }
        
    }
}

func scale(minRange: CGFloat, maxRange: CGFloat, minDomain: CGFloat, maxDomain: CGFloat, value: CGFloat) -> CGFloat {
    return minDomain + (maxDomain - minDomain) * (value - minRange) / (maxRange - minRange)
}

#Preview {
    CardSwipe()
}
