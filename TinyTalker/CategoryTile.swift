//
//  CategoryTile.swift
//  TinyTalker
//
//  Created by Alexis Washington on 8/17/25.
//
import SwiftUI

// Individual tile view for a category
struct CategoryTile: View {
    let category: Category
    
    var body: some View {
        VStack(spacing: 8) {
            // Category emoji
            Text(category.emoji)
                .font(.system(size: 40))
            // Category name
            Text(category.name)
                .font(.headline)
                .foregroundColor(.black)
        }
        .frame(maxWidth: .infinity, minHeight: 120) // fixed height, flexible width
        .background(Color.white) // tile background
        .cornerRadius(16) // rounded corners
        .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2) // subtle shadow
    }
}
