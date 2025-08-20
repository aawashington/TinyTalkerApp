//
//  CategoryDetailView.swift
//  TinyTalker
//
//  Created by Alexis Washington on 8/17/25.
//
import SwiftUI
import AVFoundation

// MARK: - Speech Manager (ObservableObject wrapper)
class SpeechManager: NSObject, ObservableObject, AVSpeechSynthesizerDelegate {
    private let synthesizer = AVSpeechSynthesizer()
    @Published var isSpeaking: Bool = false

    override init() {
        super.init()
        synthesizer.delegate = self
    }

    func speak(_ text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        utterance.rate = 0.4
        synthesizer.speak(utterance)
    }

    // MARK: Delegate
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didStart utterance: AVSpeechUtterance) {
        DispatchQueue.main.async {
            self.isSpeaking = true
        }
    }

    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance) {
        DispatchQueue.main.async {
            self.isSpeaking = false
        }
    }
}

// MARK: - Helpers
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

func article(for word: String) -> String {
    guard let firstChar = word.lowercased().first else { return "A" }
    return ["a", "e", "i", "o", "u"].contains(firstChar) ? "An" : "A"
}

// MARK: - Category Detail View
struct CategoryDetailView: View {
    let category: Category
    @StateObject private var speechManager = SpeechManager()

    var body: some View {
        ZStack {
            Color("TTBackground").ignoresSafeArea()

            VStack(spacing: 16) {
                let singularCategory = singularize(category.name)
                let articleWord = article(for: singularCategory)

                Text("Choose \(articleWord) \(singularCategory)")
                    .font(.title.bold())
                    .foregroundColor(Color("TTAccent"))
                    .padding(.top, 8)

                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                        ForEach(category.tiles) { tile in
                            Button(action: {
                                speechManager.speak(tile.text)
                            }) {
                                TileView(tile: tile)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(.horizontal)
                }
            }

            // Speaking overlay
            if speechManager.isSpeaking {
                Color.black.opacity(0.4)
                    .ignoresSafeArea()
                    .overlay(
                        VStack(spacing: 12) {
                            ProgressView()
                                .progressViewStyle(CircularProgressViewStyle(tint: .white))
                                .scaleEffect(1.5)
                            Text("Speaking…")
                                .foregroundColor(.white)
                                .font(.headline.bold())
                        }
                        .padding()
                        .background(Color.black.opacity(0.6))
                        .cornerRadius(20)
                        .shadow(radius: 10)
                    )
                    .transition(.opacity.combined(with: .scale))
                    .animation(.easeInOut(duration: 0.3), value: speechManager.isSpeaking)
            }
        }
        .navigationTitle(category.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - Tile View
struct TileView: View {
    let tile: Tile

    var body: some View {
        VStack(spacing: 8) {
            Text(tile.emoji).font(.system(size: 40))
            Text(tile.text).font(.subheadline).foregroundColor(.primary)
        }
        .frame(maxWidth: .infinity, minHeight: 100)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(radius: 2)
    }
}
