//
//  ContentView.swift
//  CinemaMoviesTV
//
//  Created by Daniel Orellana on 13/09/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var selection: Tab
    
    var body: some View {
        VStack {
            TopMenuView(currentTab: $selection)
            
            switch selection {
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
        }.ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selection: .home)
    }
}

