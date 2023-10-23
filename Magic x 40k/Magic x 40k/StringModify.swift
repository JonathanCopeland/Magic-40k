//
//  StringModify.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 12/10/2023.
//

import SwiftUI
import Foundation


struct StringModify: View {
    
    let line = "BLANCHE: I don't want realism. I want magic!"
    
    let inputString = "Test1\nTest2 — Test3 {B}{5}"

    let goalString = "Flying\nEnmitic Exterminator -- When Lokhust Heavy Destroyer enters the battlefield, each player sacrifices a creature. Unearth {5}{B}{B}{B} ({5}{B}{B}{B}: Return this card from your graveyard to the battlefield. It gains haste. Exile it at the beginning of the next end step or if it would leave the battlefield. Unearth only as a sorcery.)"
    
    var body: some View {
        
        VStack {
            Text(splitString()[1])
            
            let line = "BLANCHE: I don't want realism. I want magic!"
            Text(line.split(whereSeparator: { $0 == "I" })[0])
        }
        
        
        
        
    }
    

    func splitString() -> [Substring] {
        
        // Exclude
//        var x = inputString.components(separatedBy: "\n")
        
        var x = inputString.split(separator: "\n", omittingEmptySubsequences: false)
        
        return x
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



