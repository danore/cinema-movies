//
//  CinemaMoviesApp.swift
//  CinemaMovies
//
//  Created by Daniel Orellana on 6/09/22.
//

import SwiftUI

@main
struct CinemaMoviesApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
