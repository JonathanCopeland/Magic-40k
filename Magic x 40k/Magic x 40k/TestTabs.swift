//
//  TestTabs.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 13/11/2023.
//

import SwiftUI

struct TestTabs: View {
    
    enum SortType {
        case `default`, alphabetical, rarity
    }
    
    enum Rarity {
        case common, uncommon, rare, mythic
    }
    
    @State private var sortType = SortType.default
    @State private var showingSortOptions = false
    @State private var searchText = ""
    
//    var sortedCards: [Card] {
//        switch sortType {
//        case .default:
//            return filteredCards
//        case .alphabetical:
//            return filteredCards.sorted { $0.name < $1.name }
//        case .rarity:
//            return filteredCards.sorted { $0.rarity.rawValue < $1.rarity.rawValue }
//
//        }
//    }


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
    
    
    
    
    var filteredCards: [Card] {
        if searchText.isEmpty {
            return universes.data.cards
        } else {
            return universes.data.cards.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    
    
    
    
}

#Preview {
    TestTabs()
}



