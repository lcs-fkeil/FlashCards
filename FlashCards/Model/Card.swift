//
//  Card.swift
//  FlashCards
//
//  Created by Franka Keil on 2021-12-10.
//

import Foundation

// Defines the information we'öö track
// "Blueprint" for a card
// We make Card conform to the Equatable protocol
struct Card: Equatable {
    let question: String
    let answer: String
}

// Define a list of cards to quiz with
let listOfCard = [

    Card(question: "What is the \"powerhouse\" of a cell?",
         answer: "mitochondria")
    ,
    
    Card(question: "What is hydrolysis?",
         answer: "When water has broken away from a cell.")
    ,
    
    Card(question: "What is CH_2?",
         answer: "Methylene")
    ,
    
    Card(question: "What must we do at the start of a sentence?",
         answer: "Capitalize the first letter")
    ,
    
]











