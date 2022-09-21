//
//  ContentView.swift
//  CinemaMoviesTV
//
//  Created by Daniel Orellana on 13/09/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    enum Tab { case watchLive, currentSeries, sermonArchive }
    @State var selection: Tab
    
    var body: some View {
        VStack {
            TopMenuView()
            
            Spacer()
        }.ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selection: .watchLive)
    }
}

struct WatchLiveView: View {
    var body: some View {
        VStack {
            Text("Hello 1")
        }
    }
}

struct CurrentSeriesView: View {
    var body: some View {
        VStack {
            Text("Hello 3")
        }
    }
}

struct SermonArchiveView: View {
    var body: some View {
        VStack {
            Text("Hello 3")
        }
    }
}

