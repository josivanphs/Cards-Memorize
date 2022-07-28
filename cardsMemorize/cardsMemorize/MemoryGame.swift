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
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))

        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
