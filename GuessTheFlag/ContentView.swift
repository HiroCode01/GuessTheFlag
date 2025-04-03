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
        ZStack {
            Color.blue
                .ignoresSafeArea(edges: .all)
            
            VStack(spacing: 30) {
                VStack {
                    Text("Tap to guess the flag")
                    Text(countries[correctAnswer])
                }
                .foregroundStyle(.white)
                
                ForEach(0..<3) { number in
                    Button {
                        } label: {
                            Image(self.countries[number])
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
