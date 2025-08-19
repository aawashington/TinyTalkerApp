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
        //tiles for food category
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
        //tiles for feelings category
        Tile(emoji: "😁", text: "Happy"),
        Tile(emoji: "🥲", text: "Sad"),
        Tile(emoji: "😡", text: "Angry"),
        Tile(emoji: "😨", text: "Scared"),
        Tile(emoji: "🥱", text: "Tired"),
        Tile(emoji: "🤒", text: "Sick"),
        Tile(emoji: "😖", text: "Frustrated"),
        Tile(emoji: "🤪", text: "Silly"),
        Tile(emoji: "🥰", text: "Love"),
        Tile(emoji: "😂", text: "Funny"),
        Tile(emoji: "😌", text: "Calm"),
        Tile(emoji: "🫣", text: "Nervous"),
        Tile(emoji: "🤔", text: "Confused"),
        Tile(emoji: "😳", text: "Suprised"),
        Tile(emoji: "😍", text: "Beautiful"),
        
    ]),
    Category(
            name: "Needs",emoji: "🚻",tiles: [
                // tiles for Needs category
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
        //tiles for Clothing category
        Tile(emoji: "👕", text: "Shirt"),
        Tile(emoji: "👖", text: "Pants"),
        Tile(emoji: "🩳", text: "Shorts"),
        Tile(emoji: "👗", text: "Dress"),
        Tile(emoji: "🧥", text: "Jacket"),
        Tile(emoji: "🧦", text: "Socks"),
        Tile(emoji: "👟", text: "Shoes"),
        Tile(emoji: "🧢", text: "Hat"),
        Tile(emoji: "🩲", text: "Underwear"),
        Tile(emoji: "👓", text: "Glasses"),
        Tile(emoji: "🎒", text: "Bag"),
        
    ]),
    Category(name: "Colors", emoji: "🎨", tiles: [
        //tiles for colors category
        Tile(emoji: "🔴", text: "Red"),
        Tile(emoji: "🟠", text: "Orange"),
        Tile(emoji: "🟡", text: "Yellow"),
        Tile(emoji: "🟢", text: "Green"),
        Tile(emoji: "🔵", text: "Blue"),
        Tile(emoji: "🟣", text: "Purple"),
        Tile(emoji: "🟤", text: "Brown"),
        Tile(emoji: "⚫️", text: "Black"),
        Tile(emoji: "⚪️", text: "White"),
        Tile(emoji: "🩷", text: "Pink"),
        Tile(emoji: "🩶", text: "Grey"),
        Tile(emoji: "🌈", text: "Rainbow"),
    ]),
    Category(name: "People", emoji: "🧑‍🤝‍🧑", tiles: [
        //tiles for People category
        Tile(emoji: "👩‍🦱", text: "Mom"),
        Tile(emoji: "👨‍🦱", text: "Dad"),
        Tile(emoji: "👧", text: "Sister"),
        Tile(emoji: "👦", text: "Brother"),
        Tile(emoji: "👵", text: "Grandma"),
        Tile(emoji: "👴", text: "Grandpa"),
        Tile(emoji: "👶", text: "Baby"),
        Tile(emoji: "🧑‍🤝‍🧑", text: "Friend"),
        Tile(emoji: "🧑‍🏫", text: "Teacher"),
        Tile(emoji: "🧑‍⚕️", text: "Doctor"),
        Tile(emoji: "👮", text: "Police"),
        
    ]),
    Category(name: "Places", emoji: "🗺️", tiles: [
        //tiles for Places category
        Tile(emoji: "🏠", text: "Home"),
        Tile(emoji: "🛏️", text: "Bedroom"),
        Tile(emoji: "🚽", text: "Bathroom"),
        Tile(emoji: "🍽️", text: "Kitchen"),
        Tile(emoji: "🏫", text: "School"),
        Tile(emoji: "🏪", text: "Store"),
        Tile(emoji: "🛝", text: "Park"),
        Tile(emoji: "🚙", text: "Car")
    ]),
    Category(name: "Activities", emoji: "🎮",tiles: [
        //tiles for Activities category
        Tile(emoji: "🏀", text: "Play"),
        Tile(emoji: "📖", text: "Read"),
        Tile(emoji: "🎶", text: "Music"),
        Tile(emoji: "🕺", text: "Dance"),
        Tile(emoji: "📺", text: "Watch TV"),
        Tile(emoji: "🎮", text: "Game"),
        Tile(emoji: "✏️", text: "Draw"),
        Tile(emoji: "🚶", text: "Walk")
    ])
]
