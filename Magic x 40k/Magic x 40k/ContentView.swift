//
//  ContentView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 17/06/2023.
//

import SwiftUI
import SwiftData

let universes: UniversesBeyond = Bundle.main.decode("40k.json")


struct ContentView: View {
    
    @Environment(\.modelContext) var modelContext // Make a THING
    @Query var favourites: [Favourite] // Create a thing
    

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


