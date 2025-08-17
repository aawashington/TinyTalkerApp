//
//  SplashView.swift
//  TinyTalker
//
//  Created by Alexis Washington on 8/13/25.
//

import SwiftUI

// Splash screen displayed briefly when the app launches
struct SplashView: View {
    var body: some View {
        ZStack {
            // Background color using a custom color from Assets
            Color("TTBackground")
                .ignoresSafeArea() // extends background to cover the entire screen

            VStack(spacing: 24) {
                // App logo image
                Image("TinyTalkerLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220) // set fixed width while keeping aspect ratio
                    .accessibilityHidden(true) // hide from VoiceOver
                
                // Circular progress indicator
                ProgressView()
                    .progressViewStyle(.circular)
                    .tint(Color("TTAccent")) // custom accent color
                    .accessibilityLabel("Loading") //accessibility label for VoiceOver
            }
        }
    }
}

