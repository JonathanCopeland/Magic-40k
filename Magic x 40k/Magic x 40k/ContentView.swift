//
//  ContentView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 17/06/2023.
//

import SwiftUI

let universes: UniversesBeyond = Bundle.main.decode("40k.json")


struct ContentView: View {
    
    @State private var showingSearch = false

    
 
    var body: some View {
        
        NavigationView {
            VStack {
                CardSwipe()
                    .ignoresSafeArea()
                    .navigationTitle("Cards")
                    .toolbar {
                        Button {
                            self.showingSearch = true
                        } label: {
                            Label("Change sort order", systemImage: "magnifyingglass")
                        }
                    }
//                    .sheet(isPresented: $showingSearch) {
//                        Search(showingSearch: self.$showingSearch)
//                    }
                Button("Hello", action: {
                    
                })
            }
            
        }
        
        
    }

    


    
    
}

#Preview {
    ContentView()
}


