//
//  Search.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 17/11/2023.
//

import SwiftUI

struct Search: View {
    
    enum SortType {
        case `default`, alphabetical, rarity
    }
    
    enum Rarity {
        case common, uncommon, rare, mythic
    }
    
    @State private var searchText = ""
    @State private var sortType = SortType.default
    @State private var showingSortOptions = false
//    @Binding var showingSearch: Bool
    
    var sortedCards: [Card] {
        switch sortType {
        case .default:
            return filteredCards
        case .alphabetical:
            return filteredCards.sorted { $0.name < $1.name }
        case .rarity:
            return filteredCards.sorted { $0.rarity.rawValue < $1.rarity.rawValue }
        }
    }
    
    var body: some View {
        NavigationView {
            List(sortedCards) { card in
                if( ((card.finishes[0].rawValue == "nonfoil" || (card.rarity.rawValue == "mythic" && card.isStarter == true)) && (card.subtypes.first != "Saga")) ) {
                    NavigationLink {
                        CombinedViewSearch(card: card)
                            .padding(.bottom, 80)
                    } label: {
                        HStack {
                            VStack (alignment: .leading) {
                                Text(card.name)
                                    .font(.headline)
                                Text(typeView(card: card))
                                    .foregroundColor(.secondary)
                            }
                            
                            Spacer()
                            
                            RarityView(rarity: card.rarity.rawValue)
                        }
                        
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Search for a card")
            .toolbar {
                
                Button {
                    showingSortOptions = true
                } label: {
                    Label("Change sort order", systemImage: "arrow.up.arrow.down")
                }
                

            }
            .confirmationDialog("Sort order", isPresented: $showingSortOptions) {
                Button("Collector's Number") { sortType = .default }
                Button("Alphabetical") { sortType = .alphabetical }
                Button("Rarity") { sortType = .rarity }
            }

        }
    }
    
    var filteredCards: [Card] {
        if searchText.isEmpty {
            return universes.data.cards
        } else {
            return universes.data.cards.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    func typeView(card: Card) -> String {

        var type = ""
        
        for i in 0..<card.types.count {
            type += card.types[i].rawValue + " "
        }
        
        return type
        
        
        
    }
    
    
}

#Preview {
    Search()
}
