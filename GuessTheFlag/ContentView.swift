//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Fazliddin Abdazimov on 01/04/25.
//

import SwiftUI

struct ContentView: View {
    @State var countries: [String] = ["Estonia", "France", "Germany", "Ireland", "Italy", "Monaco", "Nigeria", "Poland", "Spain", "United Kingdom", "Ukraine", "United States"].shuffled()
    @State var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore: Bool = false
    @State private var scoreTitle: String = ""
    
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
                        flagTapped(number)
                        print(number)
                        } label: {
                            Image(self.countries[number])
                    }
                }
            }
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is ???")
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

#Preview {
    ContentView()
}
