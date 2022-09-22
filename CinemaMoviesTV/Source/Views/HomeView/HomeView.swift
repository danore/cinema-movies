//
//  HomeView.swift
//  CinemaMoviesTV
//
//  Created by Daniel Orellana on 21/09/22.
//

import SwiftUI

struct HomeView: View {
    let data = (1...8).map { "Item \($0)" }
    let columns = [GridItem(.adaptive(minimum: 200))
]
    
    var body: some View {
        ScrollView {
            GridStack(rows: 4, columns: 4) { row, col in
                CardView()
            }
            .padding()
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .top
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
