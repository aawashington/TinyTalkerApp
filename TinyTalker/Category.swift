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
    Category(name: "Food", emoji: "🍳", tiles: [
        //food category
        Tile(emoji: "🍎", text: "Apples"),
        Tile(emoji: "🍌", text: "Bananas"),
        Tile(emoji: "🍓", text: "Strawberries"),
        Tile(emoji: "🫐", text: "Blueberries"),
        Tile(emoji: "🍇", text: "Grapes"),
        Tile(emoji: "🍉", text: "Watermelon"),
        Tile(emoji: "🍳", text: "Eggs"),
        Tile(emoji: "🥞", text: "Pancakes"),
        Tile(emoji: "🥓", text: "Bacon"),
        Tile(emoji: "🥒", text: "Cucumbers"),
        Tile(emoji: "🥦", text: "Broccoli"),
        Tile(emoji: "🥕", text: "Carrots"),
        Tile(emoji: "🧀", text: "Cheese"),
        Tile(emoji: "🥛", text: "Milk"),
        Tile(emoji: "🧃", text: "Juice"),
        Tile(emoji: "🌭", text: "Hot Dog"),
        Tile(emoji: "🍕", text: "Pizza"),
        Tile(emoji: "🥪", text: "Sandwich"),
        Tile(emoji: "🍟", text: "Fries"),
        Tile(emoji: "🍗", text: "Chicken"),
        Tile(emoji: "🍝", text: "Spaghetti"),
        Tile(emoji: "🥗", text: "Salad"),
        Tile(emoji: "🍜", text: "Noodles"),
        Tile(emoji: "🍪", text: "Cookie"),
        Tile(emoji: "🍦", text: "Ice Cream"),
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
