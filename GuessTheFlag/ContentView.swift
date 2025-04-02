//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Fazliddin Abdazimov on 01/04/25.
//

import SwiftUI

struct ContentView: View {
    var countries: [String] = ["Estonia", "France", "Germany", "Ireland", "Italy", "Monaco", "Nigeria", "Poland", "Spain", "United Kingdom", "Ukraine", "United States"].shuffled()
    var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        Text("Tap to guess the flag")
        Text(countries[correctAnswer])
    }
}

#Preview {
    ContentView()
}
