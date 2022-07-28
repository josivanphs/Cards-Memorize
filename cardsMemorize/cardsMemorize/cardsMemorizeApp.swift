//
//  cardsMemorizeApp.swift
//  cardsMemorize
//
//  Created by Mikael Fonseca on 25/07/22.
//

import SwiftUI

@main
struct cardsMemorizeApp: App {
    var body: some Scene {
        let game = EmojiMemoryGame()
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
