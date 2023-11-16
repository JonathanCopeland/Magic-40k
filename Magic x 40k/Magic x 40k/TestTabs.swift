//
//  TestTabs.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 13/11/2023.
//

import SwiftUI

struct TestTabs: View {

    var body: some View {
        TabView {
            Text("Tab 1")
                .tabItem {
                    Label("One", systemImage: "star")
                }
                .tag("One")

            Text("Tab 2")
                .tabItem {
                    Label("Two", systemImage: "circle")
                }
                .tag("Two")
        }
        .navigationTitle("My Title")
        
    }
    
}

#Preview {
    TestTabs()
}
