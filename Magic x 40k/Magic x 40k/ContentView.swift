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
    
    @Environment(\.modelContext) var modelContext
    @State private var isSearchSheetPresented = false

    var body: some View {
        
        NavigationView {

            CardStack()
                .scaleEffect(1)
                .padding(.top, -60)
                .navigationTitle("Cards")
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button(action: {
                            isSearchSheetPresented = true
                        }) {
                            Image(systemName: "magnifyingglass.circle")
                        }
                    }
                }
        
                

        }
        .sheet(isPresented: $isSearchSheetPresented) {
            Search()
        }
 
    }

}

#Preview {
    ContentView()
}


