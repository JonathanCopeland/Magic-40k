//
//  BodyStringView.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 02/11/2023.
//


import SwiftUI
import WebKit

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
        
        let flavourText = card.flavorText ?? ""
        let inputString = card.text
        var convertedString: String {
            let processedString = processString(input: inputString)
            return processedString
                .replacingOccurrences(of: "\n", with: "<br>")
                .replacingOccurrences(of: "{1}", with: "<img style=\"width: 36px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/1.imageset/1.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{2}", with: "<img style=\"width: 36px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/2.imageset/2.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{3}", with: "<img style=\"width: 36px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/3.imageset/3.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{4}", with: "<img style=\"width: 36px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/4.imageset/4.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{5}", with: "<img style=\"width: 36px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/5.imageset/5.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{6}", with: "<img style=\"width: 36px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/6.imageset/6.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{7}", with: "<img style=\"width: 36px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/7.imageset/7.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{8}", with: "<img style=\"width: 36px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/8.imageset/8.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{9}", with: "<img style=\"width: 36px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/9.imageset/9.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{B}", with: "<img style=\"width: 36px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/B.imageset/B.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{U}", with: "<img style=\"width: 36px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/U.imageset/U.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{W}", with: "<img style=\"width: 36px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/W.imageset/W.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{G}", with: "<img style=\"width: 36px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/G.imageset/G.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{R}", with: "<img style=\"width: 36px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/R.imageset/R.svg\" alt=\"Your image\" />")
                .replacingOccurrences(of: "{T}", with: "<img style=\"width: 36px\" src=\"https://raw.githubusercontent.com/JonathanCopeland/Magic-40k/main/Magic%20x%2040k/Magic%20x%2040k/Assets.xcassets/Mana/T.imageset/T.svg\" alt=\"Your image\" />")

        }
        
        
//        <hr id="test">
//        <p><i>\(flavourText)</i></p>
//        
        
        WebView(htmlSource: """
                <style>
                body {
                    \(getCSSBackground())
                }
                p {
                    font-size: 46px;
                            opacity: 1;
                }
                #test {
                box-shadow: 0px -2px 6px 2px rgba(0,0,0,.2);
                width: 920px;
                }
                </style>
                <p>\(convertedString)</p>

                """
        )
    }
    
    // Adds italics
    func processString(input: String) -> String {
        let textSections = input.split(separator: "\n")
        var result: [String] = []

        for text in textSections {
            let subSections = text.split(separator: " — ", maxSplits: 1, omittingEmptySubsequences: false)
            if subSections.count >= 2 {
                var secondSubsection = String(subSections[1])
                
                // finding text within parentheses
                let regex = try! NSRegularExpression(pattern: "\\((.*?)\\)", options: .caseInsensitive)
                let range = NSRange(location: 0, length: secondSubsection.utf16.count)
                let matches = regex.matches(in: secondSubsection, options: [], range: range)
                
                // reversing so we don't mess up the indices
                for match in matches.reversed() {
                    let nsRange = match.range(at: 0) // changed this to get the whole match including parentheses
                    if let range = Range(nsRange, in: secondSubsection) {
                        let before = secondSubsection[..<range.lowerBound]
                        let target = secondSubsection[range]
                        let after = secondSubsection[range.upperBound...]
                        secondSubsection = "\(before)<i>\(target)</i>\(after)"
                    }
                }
                
                result.append("<i>\(subSections[0])</i> — \(secondSubsection)")
            } else {
                result.append(String(text))
            }
        }

        return result.joined(separator: "\n")
    }
    
    func getCSSBackground() -> String  {

        if(card.colors.count == 3) {
            return "background: #D9CC7126;"
        }
        
        if(card.colors.count == 2) {
            if(card.colors.first?.rawValue == "U" && card.colors.last?.rawValue == "B") {
                return "background: linear-gradient(90deg, #38373B26 0%, #272C2D26 25%, #0F568326 50%, #0C579926 75%);"
            }
            else if(card.colors.first?.rawValue == "G" && card.colors.last?.rawValue == "W") {
                return "background: linear-gradient(90deg, #03693926 0%, #1A735726 25%, #ECEFE626 50%, #F2F1F626 75%);"
            }
            else if(card.colors.first?.rawValue == "W" && card.colors.last?.rawValue == "B") {
                return "background: linear-gradient(90deg, #FAFDFE26 0%, #F0EDEB26 25%, #0F568326 50%, #0C579926 75%);"
            }
            else if(card.colors.first?.rawValue == "W" && card.colors.last?.rawValue == "U") {
                return "background: linear-gradient(90deg, #DC100426 0%, #DF281A26 25%, #EFEEEA26 50%, #FAFDFE26 75%);"
            }
            else if(card.colors.first?.rawValue == "R" && card.colors.last?.rawValue == "W") {
                return "background: linear-gradient(90deg, #FAFDFE26 0%, #EFEEEA26 25%, #DF281A26 50%, #DC100426 75%);"
            }
            else if(card.colors.first?.rawValue == "B" && card.colors.last?.rawValue == "R") {
                return "background: linear-gradient(90deg, #403C3326 0%, #4B464326 25%, #A8353126 50%, #D0452F26 75%);"
            }
            else if(card.colors.first?.rawValue == "B" && card.colors.last?.rawValue == "G") {
                return "background: linear-gradient(90deg, #4A443926 0%, #28232826 25%, #246F2326 50%, #06663426 75%);"
            }
            else if(card.colors.first?.rawValue == "U" && card.colors.last?.rawValue == "R") {
                return "background: linear-gradient(90deg, #01508F26 0%, #1971CE26 25%, #C5432B26 50%, #C0242826 75%);"
            }
            else if(card.colors.first?.rawValue == "G" && card.colors.last?.rawValue == "U") {
                return "background: linear-gradient(90deg, #076D4826 0%, #0F483626 25%, #19468126 50%, #13529526 75%);"
            }
            else if(card.colors.first?.rawValue == "R" && card.colors.last?.rawValue == "G") {
                return "background: linear-gradient(90deg, #DC100426 0%, #DF281A26 25%, #246F2326 50%, #06663426 75%);"
            }
            
        }
        
        if(card.colors.count == 1) {
            if(card.colors.first?.rawValue == "B") {
                return "background: #40323226"
            }
            else if (card.colors.first?.rawValue == "W") {
                return "background: #F6FCFC26"
            }
            else if (card.colors.first?.rawValue == "U") {
                return "background: #1971CE26"
            }
            else if (card.colors.first?.rawValue == "R") {
                return "background: #C5432B26"
            }
            else if (card.colors.first?.rawValue == "G") {
                return "background: #324F3326"
            }
        }
        
        if(card.colors.isEmpty) {
            return "background: #DDDDDF26"
        }
        
        return "background: #F0F3F526"
        
    }
    
}


#Preview {
    BodyStringView(card: universes.data.cards[12])
}



