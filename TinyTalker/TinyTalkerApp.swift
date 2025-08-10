//
//  TinyTalkerApp.swift
//  TinyTalker
//
//  Created by Alexis Washington on 8/10/25.
//

import SwiftUI

@main
struct TinyTalkerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
