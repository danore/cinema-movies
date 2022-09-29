//
//  ContentView.swift
//  CinemaMoviesTV
//
//  Created by Daniel Orellana on 13/09/22.
//

import SwiftUI
import CoreData

struct MainView: View {
    @State private var currentTab: Tab = .home
    
    var body: some View {
        VStack {
            TopMenuView()
                .frame(height: 100)

            switch currentTab {
            case .home:
                HomeView()
            case .series:
                Color.blue
            case .games:
                Color.yellow
            case .profile:
                Color.green
            }

            Spacer()
        }
        .ignoresSafeArea()
        .onReceive(AppState.shared.$selectedTab) { tab in
            currentTab = tab
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


