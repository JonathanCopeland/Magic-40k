//
//  ContentView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 17/06/2023.
//

import SwiftUI

let universes: UniversesBeyond = Bundle.main.decode("40k.json")


struct ContentView: View {
    

    var body: some View {
        
        TabView {
                CardSwipe()
                .tabItem {
                    Label("Cards", systemImage: "square.stack.fill")
                }
                .tag("Cards")
        
            
                Search()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
                .tag("Search")
            
        }
        
        
    }

    
}

#Preview {
    ContentView()
}


