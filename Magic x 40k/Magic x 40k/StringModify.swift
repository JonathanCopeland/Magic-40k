//
//  StringModify.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 12/10/2023.
//

import SwiftUI

struct StringModify: View {
    let superOriginalText = "Flying\nEnmitic Exterminator -- When Lokhust Heavy Destroyer enters the battlefield, each player sacrifices a creature. Unearth {5}{B}{B}{B} ({5}{B}{B}{B}: Return this card from your graveyard to the battlefield. It gains haste. Exile it at the beginning of the next end step or if it would leave the battlefield. Unearth only as a sorcery.)"
    
    let originalText = "Enmitic Exterminator -- When Lokhust Heavy Destroyer enters the battlefield, each player sacrifices a creature. Unearth {5}{B}{B}{B} ({5}{B}{B}{B}: Return this card from your graveyard to the battlefield. It gains haste. Exile it at the beginning of the next end step or if it would leave the battlefield. Unearth only as a sorcery.)"
    
    let originalText2 = "Destroy all creatures. They can't be regenerated. Draw a card for each creature destroyed this way.\nCycling {3}{B}{B} ({3}{B}{B}, Discard this card: Draw a card.)\nWhen you cycle Decree of Pain, all creatures get -2/-2 until end of turn."
    
    let originalText3 = "Trample\nFrenzied Rampage — At the beginning of combat on your turn, choose an opponent at random. Knight Rampager attacks that player this combat if able.\nWhen Knight Rampager dies, it deals 4 damage to target opponent chosen at random."
    
    
    var body: some View {

        scrubString()
        
    }
    
    func scrubString() -> some View {
 
        
        return HStack{
    
            Text(splitString(input: superOriginalText)[0])
        }
  
    }
    
    func splitString(input: String) -> [String] {
        do {
            let regex = try NSRegularExpression(pattern: "(Flying)|(\n)|( -- )")
            let nsString = input as NSString
            let matches = regex.matches(in: input, options: [], range: NSRange(location: 0, length: nsString.length))
            let parts: [String] = matches.map { result in
                let range = result.range
                return nsString.substring(with: range)
            }
            return parts
        } catch {
            print("Invalid regex pattern")
            return []
        }
    }
    


}


#Preview {
    StringModify()
}



/*
 1. Split new lines
 2. Split by "--" AND/OR "()"
 3. Split by spaces
 4. Remove curly brackets
 5. Convert to Text() and Image() views
 6. Reverse 3 - Combine into HStack
 7. Reverse 2 - Convert strings that don't contain {} into Text() views and combine into HStack with Text("--") divider
 8. Reverse 1 - Convert strings that don't contain {} into Text() views and combine into VStack
 
 
 // Original
 Hello /n
 World -- This is a {1}{2} greeting
 
 // 1
 Hello
 World -- This is a {1}{2} greeting
 
 //2
 World
 This is a {1}{2} greeting
 
 //3
 This is a
 {1}
 {2}
 greeting
 
 // 4
 This is a
 1
 2
 greeting
 
 // 5
 Text("This is a ")
 Image("1")
 Image("2")
 Text("greeting")
 
 // 6
 HStack {
     Text("This is a ")
     Image("1")
     Image("2")
     Text("greeting")
 }
 
 // 7
 HStack {
     Text("World")
     Text("--")
     HStack {
         Text("This is a ")
         Image("1")
         Image("2")
         Text("greeting")
     }
 }
 
 // 8
 VStack {
     Text("Hello")
     HStack {
         Text("World")
         Text("--")
         HStack {
             Text("This is a ")
             Image("1")
             Image("2")
             Text("greeting")
         }
     }
 }
 

  
 
 
 
 
 */



/*
 
 // To use for output
 
 return HStack {
     Text("Hi ")
     Text(Image(systemName: "star"))
         .foregroundStyle(.blue)
     Text(" World!")
 }
 
 */


//else if (originalText.contains("--")) {
//    rawSubStringArray = originalText.split(separator: "--")
//    let rawStringArray = rawSubStringArray.map { String($0) }
//}



