//
//  ContentView.swift
//  FlashCards
//
//  Created by Franka Keil on 2021-12-10.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    // Store the card to work with
    // It is randomly selected from te list of cards
    @State var currentCard = listOfCard.randomElement()!
    
    // What wad the previous card?
    @State var previousCard = listOfCard.randomElement()!
    
    // This controls whether the answer is visible
    @State var isAnswerShowing = false
    
    
    // MARK: Computed properties
    var body: some View {
        ScrollView {
            
            // Show question
            Text(currentCard.question)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            
            // Check answer
            Button(action: {
                // Reveal the answer
                withAnimation {
                    isAnswerShowing = true
                }
                
            }, label: {
                Text("Check")
            })
                .buttonStyle(.bordered)
            
            // Show answer
            Text(currentCard.answer)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            //            CONDITION       true  false
                .opacity(isAnswerShowing ? 1.0 : 0.0)
            
            
            // Show a new question
            Button(action: {
            // Keep track of the previous question
                previousCard = currentCard
                
                // Loop forever until it picks a different card!
                // Use the condition to say "keep looping when this condition is true."
                while previousCard == currentCard {
                    // Get another question
                    currentCard = listOfCard.randomElement()!
                    
                }
                
                // Hide the answer
                isAnswerShowing = false
            }, label: {
                Text("Another")
            })
                .buttonStyle(.bordered)
            //            CONDITION       true  false
                .opacity(isAnswerShowing ? 1.0 : 0.0)
            
            
        }
        
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
