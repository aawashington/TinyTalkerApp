import SwiftUI
import AVFoundation

struct KeyboardView: View {
    @State private var inputText: String = ""
    private let speechSynthesizer = AVSpeechSynthesizer()
    
    var body: some View {
        VStack(spacing: 20) {
            // Input field
            TextField("Type to Speak...", text: $inputText, axis: .vertical)
                .padding()
                .frame(maxWidth: .infinity, minHeight: 100, alignment: .topLeading)
                .background(Color.white)
                .cornerRadius(12)
                .shadow(radius: 2)
                .padding(.horizontal)
            
            // Speak button
            Button(action: {
                speak(inputText)
            }) {
                HStack {
                    Image(systemName: "speaker.wave.2.fill")
                    Text("Speak")
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: 200)
                .background(Color.blue)
                .cornerRadius(12)
                .shadow(radius: 2)
            }
            
            Spacer()
        }
        .padding(.top)
        .background(Color("TTBackground").ignoresSafeArea())
        .navigationTitle("Text to Speech")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    private func speak(_ text: String) {
        guard !text.isEmpty else { return }
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        utterance.rate = 0.45
        speechSynthesizer.speak(utterance)
    }
}