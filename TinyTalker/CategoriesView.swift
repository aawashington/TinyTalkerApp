//
//  CategoriesView.swift
//  TinyTalker
//
//  Created by Alexis Washington on 8/17/25.
//

import SwiftUI

// Main view showing all categories in a grid
struct CategoriesView: View {
    var body: some View {
        ZStack {
            // Background color
            Color("TTBackground")
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 16) {
                // Screen header
                Text("Choose A Category")
                    .font(.title.bold())
                    .foregroundColor(Color("TTAccent"))
                    .padding(.top, 8)
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                // Scrollable grid of category tiles
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                        ForEach(sampleCategories) { category in
                            // Navigate to category detail on tap
                            NavigationLink(destination: CategoryDetailView(category: category)) {
                                CategoryTile(category: category)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                    Spacer()
                }
            }
            .navigationTitle("Categories")
            .navigationBarTitleDisplayMode(.inline)
        }
    }

