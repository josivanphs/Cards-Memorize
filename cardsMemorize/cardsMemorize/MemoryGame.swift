//
//  MemoryGame.swift
//  cardsMemorize
//
//  Created by Mikael Fonseca on 27/07/22.
//

import Foundation

struct MemoryGame<CardContent>{
    var cards: Array <Card>
    
    func choose(card: Card){
        print("card choose: \(card)")
        
    }
    
    init(numberOfPairsOfCards: Int, cardContentFatory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards{
            let content = cardContentFatory(pairIndex)
            cards.append(Card(isFaceUp: false, isMatched: false, content: content))
            cards.append(Card(isFaceUp: false, isMatched: false, content: content))

        }
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
