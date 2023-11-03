//
//  BodyStringView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 02/11/2023.
//


import SwiftUI
import WebKit


/*
 
 let inputString = "Test1\nTest2 — Test3 {B}{5}"

 
 What are my options?
 1. String interpolation
    Text("Hello, \(Image(systemName: "globe"))!")
 
    Blocker: I can't style the image, or replace and return Text() views
 
 2.
 
 */


struct WebView: UIViewRepresentable {
    let htmlSource: String

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.loadHTMLString(htmlSource, baseURL: nil)
    }
}

struct BodyStringView: View {
    
    let card: Card
    

        

    var body: some View {
        
        let inputString = card.text
        var convertedString: String {
            let processedString = processString(input: inputString)
            return processedString
                .replacingOccurrences(of: "\n", with: "<br>")
                .replacingOccurrences(of: "{1}", with: "<img style=\"width: 24px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/1.imageset/1.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{2}", with: "<img style=\"width: 24px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/2.imageset/2.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{3}", with: "<img style=\"width: 24px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/3.imageset/3.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{4}", with: "<img style=\"width: 24px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/4.imageset/4.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{5}", with: "<img style=\"width: 24px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/5.imageset/5.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{6}", with: "<img style=\"width: 24px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/6.imageset/6.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{7}", with: "<img style=\"width: 24px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/7.imageset/7.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{8}", with: "<img style=\"width: 24px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/8.imageset/8.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{9}", with: "<img style=\"width: 24px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/9.imageset/9.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{B}", with: "<img style=\"width: 24px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/B.imageset/B.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{U}", with: "<img style=\"width: 24px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/U.imageset/U.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{W}", with: "<img style=\"width: 24px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/W.imageset/W.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{G}", with: "<img style=\"width: 24px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/G.imageset/G.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{R}", with: "<img style=\"width: 24px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/R.imageset/R.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{T}", with: "<img style=\"width: 24px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/T.imageset/T.svg\" alt=\"Your image\" />")
        }
        
        
        
        WebView(htmlSource: """
                <style>
                h1 {
                    color: red;
                    font-size: 30px;
                }
                </style>
                <p>\(convertedString)</p>
                """
        )
    }
    
    // Adds italics
    func processString(input: String) -> String {
        var newString = input

        let regexPattern = "\\((.*?)\\)"
        let regex = try? NSRegularExpression(pattern: regexPattern, options: [])
        let nsString = newString as NSString

        let matches = regex?.matches(in: newString, options: [], range: NSRange(location: 0, length: nsString.length))
        var offset = 0

        for match in matches ?? [] {
            let matchRange = match.range
            let adjustedRange = NSRange(location: matchRange.location + offset, length: matchRange.length)

            let substring = nsString.substring(with: adjustedRange)
            let newSubstring = "<i>\(substring)</i>"
        
            newString = newString.replacingCharacters(in: Range(adjustedRange, in: newString)!, with: newSubstring)
            offset += 7 // <i> and </i> add 7 characters to the string
        }

        let splitStringByDoubleDash = newString.components(separatedBy: " — ")
        var result = ""

        for (index, part) in splitStringByDoubleDash.enumerated() {
            if index == 0 {
                let splitStringBySlashN = part.components(separatedBy: "\n")
                if splitStringBySlashN.count >= 2 {
                    result = "\(splitStringBySlashN[0])\n<i>\(splitStringBySlashN[1])</i>"
                } else {
                    result = "<i>\(splitStringBySlashN[0])</i>"
                }
            } else {
                result += " — \(part)"
            }
        }

        return result
    }
    
}


#Preview {
    BodyStringView(card: universes.data.cards[2])
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



// https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/1.imageset/1.svg
// https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/B.imageset/B.svg

