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
    
    let cardId : String
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(.cardBorder)
                .frame(width: 316, height: 229)
            
            Rectangle()
                .foregroundColor(.clear)
                .background(
                    
                    AsyncImage(url: URL(string: defineURL())) { image in
                                image.resizable()
                            .aspectRatio(contentMode: .fit)
                                .frame(width: 311, height: 229)
                                .clipped()
                                .border(.black)
                                .padding(2)
                            } placeholder: {
                                ProgressView()
                            }
                )
            
                
        }
        .frame(width: 316, height: 229)
        
        

    }
    
    
    func defineURL() -> String {
        
        let firstLetter = cardId[0].string
        let secondLetter = cardId[1].string
        let combined = "https://cards.scryfall.io/art_crop/front/" + firstLetter + "/" + secondLetter + "/" + cardId + ".jpg"
        
        return combined
    }
    
}

#Preview {
    ImageView(cardId: universes.data.cards[0].identifiers.scryfallID)
}
