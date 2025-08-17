//
//  RootView.swift
//  TinyTalker
//
//  Created by Alexis Washington on 8/13/25.
//

import SwiftUI

// RootView manages the splash screen and main navigation
struct RootView: View {
    @State private var showSplash = true // controls whether splash is visible
    
    var body: some View {
        ZStack {
            if showSplash {
                // Show SplashView with a fade + scale animation
                SplashView()
                    .transition(.opacity.combined(with: .scale))
            } else {
                // Main app navigation stack with categories
                NavigationStack {
                    CategoriesView()
                }
                .transition(.opacity) // fade transition when splash disappears
            }
        }
        .onAppear {
            // Automatically hide splash screen after 3 seconds
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                withAnimation(.easeOut(duration: 0.35)) {
                    showSplash = false
                }
            }
        }
    }
}
