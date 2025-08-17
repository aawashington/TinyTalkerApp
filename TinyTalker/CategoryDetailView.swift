//
//  CategoryDetailView.swift
//  TinyTalker
//
//  Created by Alexis Washington on 8/17/25.
//
import SwiftUI

// Detail screen for a selected category
struct CategoryDetailView: View {
    let category: Category

    var body: some View {
        ZStack {
            Color("TTBackground").ignoresSafeArea() // background

            VStack(spacing: 16) {
                // Dynamic header, remove "s" for singular form
                Text("Choose A \(category.name.dropLast())")
                    .font(.title.bold())
                    .foregroundColor(Color("TTAccent"))
                    .padding(.top, 8)
                
                // Scrollable grid of tiles for the category
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                        ForEach(category.tiles) { tile in
                            TileView(tile: tile)
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
        .navigationTitle(category.name)
        .navigationBarTitleDisplayMode(.inline)
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
