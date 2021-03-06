//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by kagan on 11.09.2021.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    static let emojis: [String] = ["π", "π₯³", "βοΈ", "π", "π", "π", "π€¨",
    "π", "π§", "π", "π₯Ά", "πΆβπ«οΈ", "π±"]
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) {pairIndex in
            emojis[pairIndex]}
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
//    MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
