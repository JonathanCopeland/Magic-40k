//
//  Message.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 18/06/2024.
//

import SwiftUI

// MARK: Sample Message Model
struct Message: Identifiable,Equatable{
    var id: String = UUID().uuidString
    var imageFile: String
}

