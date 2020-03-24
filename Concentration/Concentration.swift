//
//  Concentration.swift
//  Concentration
//
//  Created by Louis Liao on 2020/3/22.
//  Copyright © 2020 Louis Liao. All rights reserved.
//

import Foundation

class Concentration {
    var cards = [Card]()
    
    func chooseCard(at index: Int) {
        if cards[index].isFaceUp{
            cards[index].isFaceUp = false
        } else {
            cards[index].isFaceUp = true
        }
//        if !cards[index].isMatched {
            
//        }
    }
    
    init(numberOFPairsOfCards: Int) {
        for _ in 1...numberOFPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        // TODO: Shuffle the cards
        cards.shuffle()
    }
}
