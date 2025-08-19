//
//  CategoryDetailView.swift
//  TinyTalker
//
//  Created by Alexis Washington on 8/17/25.
//
import SwiftUI
import AVFoundation

// Function to singularize and handle special cases
func singularize(_ category: String) -> String {
    let lower = category.lowercased()
    
    if lower == "people" {
        return "Person"
    } else if lower == "activities" {
        return "Activity"
    } else if lower.hasSuffix("s") {
        return String(category.dropLast())
    }
    return category
}

// Function to pick "A" or "An"
func article(for word: String) -> String {
    guard let firstChar = word.lowercased().first else { return "A" }
    return ["a", "e", "i", "o", "u"].contains(firstChar) ? "An" : "A"
}

// Detail screen for a selected category
struct CategoryDetailView: View {
    let category: Category
    private let speechSynthesizer = AVSpeechSynthesizer() // 🔊

    var body: some View {
        ZStack {
            Color("TTBackground").ignoresSafeArea() // background

            VStack(spacing: 16) {
                
                // Dynamic header
                let singularCategory = singularize(category.name)
                let articleWord = article(for: singularCategory)

                Text("Choose \(articleWord) \(singularCategory)")
                    .font(.title.bold())
                    .foregroundColor(Color("TTAccent"))
                    .padding(.top, 8)
                
                // Scrollable grid of tiles for the category
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                        ForEach(category.tiles) { tile in
                            Button(action: {
                                speak(tile.text) // 🔊 Speak when tapped
                            }) {
                                TileView(tile: tile)
                            }
                            .buttonStyle(.plain) // keep the custom look
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
        .navigationTitle(category.name)
        .navigationBarTitleDisplayMode(.inline)
    }

    // Helper method to speak text
    private func speak(_ text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        utterance.rate = 0.4 // slower for clarity
        speechSynthesizer.speak(utterance)
    }
}

// Individual tile in the category detail
struct TileView: View {
    let tile: Tile

    var body: some View {
        VStack(spacing: 8) {
            // Tile emoji
            Text(tile.emoji).font(.system(size: 40))
            // Tile description text
            Text(tile.text).font(.subheadline).foregroundColor(.primary)
        }
        .frame(maxWidth: .infinity, minHeight: 100)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(radius: 2) // subtle shadow
    }
}
