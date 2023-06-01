//
//  Login_PageApp.swift
//  Login Page
//
//  Created by Hojin Moon on 6/1/23.
//

import SwiftUI

@main
struct Login_PageApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
