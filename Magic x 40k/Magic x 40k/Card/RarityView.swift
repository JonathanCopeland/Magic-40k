//
//  RarityView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 09/09/2023.
//

import SwiftUI

struct RarityView: View {
    
    let rarity: String
    
    var body: some View {
        setRarity()
    }
    
    @ViewBuilder
    func setRarity() -> some View {
        
        if (rarity == "mythic") {
            // Mythic
            ZStack {
                ZStack{
                    
                    // Black border
                    ZStack{
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x:  0.4, y:  0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x: -0.4, y: -0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x: -0.4, y:  0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x:  0.4, y: -0.4)
                    }
                    .foregroundColor(.black)
                    
                    // Gradient border
                    Text("")
                        .font(.custom("keyrune", size: 26))
                        .foregroundStyle(

                            LinearGradient(
                                colors: [.mythic1, .mythic2, .mythic1],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                }
                
                // White skull
                // White skull with black border
                ZStack{
                    ZStack{
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x:  0.4, y:  0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x: -0.4, y: -0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x: -0.4, y:  0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x:  0.4, y: -0.4)
                    }
                    .foregroundColor(.black)
                    
                    // Hack
                    // Black eyes for white skull
                        ZStack{
                            Text("")
                                .font(.custom("keyrune", size: 16.9))
                                .offset(x:  0.4, y:  0.4)
                            
                            Text("")
                                .font(.custom("keyrune", size: 16.9))
                                .offset(x: -0.4, y: -0.4)
                            
                            Text("")
                                .font(.custom("keyrune", size: 16.9))
                                .offset(x: -0.4, y:  0.4)
                            
                            Text("")
                                .font(.custom("keyrune", size: 16.9))
                                .offset(x:  0.4, y: -0.4)
                        }
                        .foregroundColor(.black)
                    
                    
                    Text("")
                        .font(.custom("keyrune", size: 26))
                        .foregroundStyle(.white)
                }
            }
            
            
        }
        else if (rarity == "rare") {
            
            // Rare
            ZStack {
                ZStack{
                    
                    // Black border
                    ZStack{
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x:  0.4, y:  0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x: -0.4, y: -0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x: -0.4, y:  0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x:  0.4, y: -0.4)
                    }
                    .foregroundColor(.black)
                    
                    // Gradient border
                    Text("")
                        .font(.custom("keyrune", size: 26))
                        .foregroundStyle(

                            LinearGradient(
                                colors: [.rare1, .rare2, .rare1],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                }
                
                // White skull
                // White skull with black border
                ZStack{
                    ZStack{
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x:  0.4, y:  0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x: -0.4, y: -0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x: -0.4, y:  0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x:  0.4, y: -0.4)
                    }
                    .foregroundColor(.black)
                    
                    // Hack
                    // Black eyes for white skull
                        ZStack{
                            Text("")
                                .font(.custom("keyrune", size: 16.9))
                                .offset(x:  0.4, y:  0.4)
                            
                            Text("")
                                .font(.custom("keyrune", size: 16.9))
                                .offset(x: -0.4, y: -0.4)
                            
                            Text("")
                                .font(.custom("keyrune", size: 16.9))
                                .offset(x: -0.4, y:  0.4)
                            
                            Text("")
                                .font(.custom("keyrune", size: 16.9))
                                .offset(x:  0.4, y: -0.4)
                        }
                        .foregroundColor(.black)
                    
                    
                    Text("")
                        .font(.custom("keyrune", size: 26))
                        .foregroundStyle(.white)
                }
            }

            // *****************
            
        }
        else if (rarity == "uncommon") {
            
            // Uncommon
            ZStack {
                ZStack{
                    
                    // Black border
                    ZStack{
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x:  0.4, y:  0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x: -0.4, y: -0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x: -0.4, y:  0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x:  0.4, y: -0.4)
                    }
                    .foregroundColor(.black)
                    
                    // Gradient border
                    Text("")
                        .font(.custom("keyrune", size: 26))
                        .foregroundStyle(

                            LinearGradient(
                                colors: [.uncommon1, .uncommon2, .uncommon1],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                }
                
                // White skull
                // White skull with black border
                ZStack{
                    ZStack{
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x:  0.4, y:  0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x: -0.4, y: -0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x: -0.4, y:  0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x:  0.4, y: -0.4)
                    }
                    .foregroundColor(.black)
                    
                    // Hack
                    // Black eyes for white skull
                        ZStack{
                            Text("")
                                .font(.custom("keyrune", size: 16.9))
                                .offset(x:  0.4, y:  0.4)
                            
                            Text("")
                                .font(.custom("keyrune", size: 16.9))
                                .offset(x: -0.4, y: -0.4)
                            
                            Text("")
                                .font(.custom("keyrune", size: 16.9))
                                .offset(x: -0.4, y:  0.4)
                            
                            Text("")
                                .font(.custom("keyrune", size: 16.9))
                                .offset(x:  0.4, y: -0.4)
                        }
                        .foregroundColor(.black)
                    
                    
                    Text("")
                        .font(.custom("keyrune", size: 26))
                        .foregroundStyle(.white)
                }
            }
            
            // ***************
            
        }
        else {
            // Common
            ZStack {
                
                // Black wings with white border
                ZStack{
                    ZStack{
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x:  0.4, y:  0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x: -0.4, y: -0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x: -0.4, y:  0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x:  0.4, y: -0.4)
                    }
                    .foregroundColor(.white)
                    
                    Text("")
                        .font(.custom("keyrune", size: 26))
                        .foregroundStyle(.black)
                }
                
                // White skull with black border
                ZStack{
                    ZStack{
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x:  0.4, y:  0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x: -0.4, y: -0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x: -0.4, y:  0.4)
                        
                        Text("")
                            .font(.custom("keyrune", size: 26))
                            .offset(x:  0.4, y: -0.4)
                    }
                    .foregroundColor(.white)
                    
                    // Hack
                    // Black eyes for white skull
                        ZStack{
                            Text("")
                                .font(.custom("keyrune", size: 16.9))
                                .offset(x:  0.4, y:  0.4)
                            
                            Text("")
                                .font(.custom("keyrune", size: 16.9))
                                .offset(x: -0.4, y: -0.4)
                            
                            Text("")
                                .font(.custom("keyrune", size: 13))
                                .offset(x: -0.4, y:  0.4)
                            
                            Text("")
                                .font(.custom("keyrune", size: 16.9))
                                .offset(x:  0.4, y: -0.4)
                        }
                        .foregroundColor(.black)
                    
                    
                    Text("")
                        .font(.custom("keyrune", size: 26))
                        .foregroundStyle(.white)
                }

            }

            
        }
        
    }

    
}

#Preview {
    RarityView(rarity: universes.data.cards[0].rarity.rawValue)
}
