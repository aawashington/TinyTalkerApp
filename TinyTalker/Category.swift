//
//  Category.swift
//  TinyTalker
//
//  Created by Alexis Washington on 8/17/25.
//
import SwiftUI

// Tile represents an individual button with emoji + text
struct Tile: Identifiable {
    let id = UUID() // unique identifier for SwiftUI lists
    let emoji: String
    let text: String
}

// Category represents a group of tiles with a name and emoji
struct Category: Identifiable {
    let id = UUID()
    let name: String
    let emoji: String
    let tiles: [Tile] // collection of tiles in this category
    
}

// Sample categories used to populate the app
let sampleCategories: [Category] = [
    Category(name: "Food", emoji: "🍔", tiles: [
        //tiles from Needs category as a placeholder
        Tile(emoji: "🚽", text: "I need to potty"),
        Tile(emoji: "🍽️", text: "I’m hungry"),
        Tile(emoji: "🧃", text: "I’m thirsty"),
        Tile(emoji: "😴", text: "I’m tired"),
        Tile(emoji: "🙋‍♀️", text: "I need help"),
        Tile(emoji: "🥵", text: "I’m hot"),
        Tile(emoji: "🥶", text: "I’m cold"),
        Tile(emoji: "🙆‍♀️", text: "All done")
    ]),
    Category(name: "Feelings", emoji: "😊", tiles: [
        //tiles from Needs category as a placeholder
        Tile(emoji: "🚽", text: "I need to potty"),
        Tile(emoji: "🍽️", text: "I’m hungry"),
        Tile(emoji: "🧃", text: "I’m thirsty"),
        Tile(emoji: "😴", text: "I’m tired"),
        Tile(emoji: "🙋‍♀️", text: "I need help"),
        Tile(emoji: "🥵", text: "I’m hot"),
        Tile(emoji: "🥶", text: "I’m cold"),
        Tile(emoji: "🙆‍♀️", text: "All done")
    ]),
    Category(
            name: "Needs",
            emoji: "🚻",
            tiles: [
                Tile(emoji: "🚽", text: "I need to potty"),
                Tile(emoji: "🍽️", text: "I’m hungry"),
                Tile(emoji: "🧃", text: "I’m thirsty"),
                Tile(emoji: "😴", text: "I’m tired"),
                Tile(emoji: "🙋‍♀️", text: "I need help"),
                Tile(emoji: "🥵", text: "I’m hot"),
                Tile(emoji: "🥶", text: "I’m cold"),
                Tile(emoji: "🙆‍♀️", text: "All done")
            ]
        ),
    Category(name: "Clothing", emoji: "👖", tiles: [
        //tiles from Needs category as a placeholder
        Tile(emoji: "🚽", text: "I need to potty"),
        Tile(emoji: "🍽️", text: "I’m hungry"),
        Tile(emoji: "🧃", text: "I’m thirsty"),
        Tile(emoji: "😴", text: "I’m tired"),
        Tile(emoji: "🙋‍♀️", text: "I need help"),
        Tile(emoji: "🥵", text: "I’m hot"),
        Tile(emoji: "🥶", text: "I’m cold"),
        Tile(emoji: "🙆‍♀️", text: "All done")
    ]),
    Category(name: "Colors", emoji: "🎨", tiles: [
        //tiles from Needs category as a placeholder
        Tile(emoji: "🚽", text: "I need to potty"),
        Tile(emoji: "🍽️", text: "I’m hungry"),
        Tile(emoji: "🧃", text: "I’m thirsty"),
        Tile(emoji: "😴", text: "I’m tired"),
        Tile(emoji: "🙋‍♀️", text: "I need help"),
        Tile(emoji: "🥵", text: "I’m hot"),
        Tile(emoji: "🥶", text: "I’m cold"),
        Tile(emoji: "🙆‍♀️", text: "All done")
    ]),
    Category(name: "People", emoji: "🧑‍🤝‍🧑", tiles: [
        //tiles from Needs category as a placeholder
        Tile(emoji: "🚽", text: "I need to potty"),
        Tile(emoji: "🍽️", text: "I’m hungry"),
        Tile(emoji: "🧃", text: "I’m thirsty"),
        Tile(emoji: "😴", text: "I’m tired"),
        Tile(emoji: "🙋‍♀️", text: "I need help"),
        Tile(emoji: "🥵", text: "I’m hot"),
        Tile(emoji: "🥶", text: "I’m cold"),
        Tile(emoji: "🙆‍♀️", text: "All done")
    ]),
    Category(name: "Places", emoji: "🗺️", tiles: [
        //tiles from Needs category as a placeholder
        Tile(emoji: "🚽", text: "I need to potty"),
        Tile(emoji: "🍽️", text: "I’m hungry"),
        Tile(emoji: "🧃", text: "I’m thirsty"),
        Tile(emoji: "😴", text: "I’m tired"),
        Tile(emoji: "🙋‍♀️", text: "I need help"),
        Tile(emoji: "🥵", text: "I’m hot"),
        Tile(emoji: "🥶", text: "I’m cold"),
        Tile(emoji: "🙆‍♀️", text: "All done")
    ]),
    Category(name: "Activities", emoji: "🎮",tiles: [
        //tiles from Needs category as a placeholder
        Tile(emoji: "🚽", text: "I need to potty"),
        Tile(emoji: "🍽️", text: "I’m hungry"),
        Tile(emoji: "🧃", text: "I’m thirsty"),
        Tile(emoji: "😴", text: "I’m tired"),
        Tile(emoji: "🙋‍♀️", text: "I need help"),
        Tile(emoji: "🥵", text: "I’m hot"),
        Tile(emoji: "🥶", text: "I’m cold"),
        Tile(emoji: "🙆‍♀️", text: "All done")
    ])
]
