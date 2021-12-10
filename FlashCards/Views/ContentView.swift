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
            }, label: {
                Text("Check")
            })
                .buttonStyle(.bordered)
            
            // Show answer
            Text(currentCard.answer)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            
            // Show a new question
            Button(action: {
                // Get another question
                currentCard = listOfCard.randomElement()!
                
                // Hide the answer
            }, label: {
                Text("Another")
            })
                .buttonStyle(.bordered)
            
            
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
