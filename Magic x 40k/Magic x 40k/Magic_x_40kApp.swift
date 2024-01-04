//
//  Magic_x_40kApp.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 17/06/2023.
//

import SwiftUI
import SwiftData


@main
struct Magic_x_40kApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Favourite.self)
    }
}
