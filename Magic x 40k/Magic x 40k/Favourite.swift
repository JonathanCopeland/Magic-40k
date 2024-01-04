//
//  Favourite.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 04/01/2024.
//

import Foundation
import SwiftData

@Model
class Favourite {
    var card: Card
    
    init(card: Card) {
        self.card = card
    }
}
