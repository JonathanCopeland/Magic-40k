//
//  ImageView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 25/06/2023.
//

import SwiftUI

extension StringProtocol {
    subscript(_ offset: Int)                     -> Element     { self[index(startIndex, offsetBy: offset)] }
    subscript(_ range: Range<Int>)               -> SubSequence { prefix(range.lowerBound+range.count).suffix(range.count) }
    subscript(_ range: ClosedRange<Int>)         -> SubSequence { prefix(range.lowerBound+range.count).suffix(range.count) }
    subscript(_ range: PartialRangeThrough<Int>) -> SubSequence { prefix(range.upperBound.advanced(by: 1)) }
    subscript(_ range: PartialRangeUpTo<Int>)    -> SubSequence { prefix(range.upperBound) }
    subscript(_ range: PartialRangeFrom<Int>)    -> SubSequence { suffix(Swift.max(0, count-range.lowerBound)) }
}

extension LosslessStringConvertible {
    var string: String { .init(self) }
}

extension BidirectionalCollection {
    subscript(safe offset: Int) -> Element? {
        guard !isEmpty, let i = index(startIndex, offsetBy: offset, limitedBy: index(before: endIndex)) else { return nil }
        return self[i]
    }
}

struct ImageView: View {
    
    let card: Card
    
    var body: some View {
        
        ZStack {
            GradientFill(card: card)
                .frame(width: 316, height: 229)
                        
            Rectangle()
                .foregroundColor(.clear)
                .background(
                    AsyncImage(url: URL(string: defineURL())) { image in
                                image.resizable()
                            .aspectRatio(contentMode: .fill)
                                .frame(width: 311, height: 227)
                                .clipped()
                                .border(.black)
                            } placeholder: {
                                ProgressView()
                            }
                )
        }
        .frame(width: 316, height: 227)
        
        

    }
    
    
    func defineURL() -> String {
        
        let firstLetter = card.identifiers.scryfallID[0].string
        let secondLetter = card.identifiers.scryfallID[1].string
        let combined = "https://cards.scryfall.io/art_crop/front/" + firstLetter + "/" + secondLetter + "/" + card.identifiers.scryfallID + ".jpg"
        
        return combined
    }
    
    
}

#Preview {
    ImageView(card: universes.data.cards[24])
}
