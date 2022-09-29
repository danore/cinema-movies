//
//  AppState.swift
//  CinemaMoviesTV
//
//  Created by Daniel Orellana on 21/09/22.
//

import SwiftUI

class AppState: ObservableObject {
    
    static let shared = AppState()
    
    private init() {}
    
    @Published var selectedTab: Tab = .home
    @Published var isMenuSelected: Bool = true
    
}
