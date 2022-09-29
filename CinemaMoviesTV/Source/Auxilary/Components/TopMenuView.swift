//
//  TopMenuView.swift
//  CinemaMoviesTV
//
//  Created by Daniel Orellana on 21/09/22.
//

import SwiftUI

struct TopMenuView: View {
    @FocusState var focused
    @State private var isFocusable: Bool = true
    @State private var currentTab: Tab = .home
    
    var body: some View {
        ZStack {
            Color.red
            HStack {
                Rectangle()
                    .frame(width: 150, height: 60, alignment: .leading)
                    .padding(.leading, 25)
                
                Spacer()
                
                HStack {
                    MenuItemView(
                        currentTab: $currentTab,
                        isFocusable: $isFocusable,
                        title: "HOME",
                        tab: .home)
                    
                    MenuItemView(
                        currentTab: $currentTab,
                        isFocusable: $isFocusable,
                        title: "SERIES",
                        tab: .series)
                    
                    MenuItemView(
                        currentTab: $currentTab,
                        isFocusable: $isFocusable,
                        title: "GAMES",
                        tab: .games)
                }
                
                Spacer()
                
                MenuItemView(
                    currentTab: $currentTab,
                    isFocusable: $isFocusable,
                    image: Image(systemName: "person"),
                    tab: .profile)
                .padding(.trailing, 25)
            }
        }
        .onChange(of: currentTab, perform: { tab in
            AppState.shared.selectedTab = tab
        })
        .focusSection()
    }
}

struct TopMenuView_Previews: PreviewProvider {
    static var previews: some View {
        TopMenuView()
    }
}
