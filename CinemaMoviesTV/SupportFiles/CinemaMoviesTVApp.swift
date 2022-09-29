//
//  CinemaMoviesTVApp.swift
//  CinemaMoviesTV
//
//  Created by Daniel Orellana on 13/09/22.
//

import SwiftUI

@main
struct CinemaMoviesTVApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
