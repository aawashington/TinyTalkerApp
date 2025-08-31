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
                TabView {
                    // Keyboard tab 
                    NavigationStack { KeyboardView() }
                        .tabItem { Label("Keyboard", systemImage: "keyboard") }
                                    
                    // Home (categories)
                    NavigationStack { AddButtonView() }
                        .tabItem { Label("Add", systemImage: "plus.circle.fill") }
                                    
                    // Add Custom Button tab 
                    NavigationStack { AddButtonView() }
                        .tabItem { Label("Add", systemImage: "plus.circle.fill") }
                                    
                    // Settings tab (placeholder)
                    NavigationStack { Text("Settings Page")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(Color("TTBackground")) }
                        .tabItem { Label("Settings", systemImage: "gearshape.fill")
                    }
                }
                .transition(.opacity)
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
