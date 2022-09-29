//
//  MenuItemView.swift
//  CinemaMoviesTV
//
//  Created by Daniel Orellana on 29/09/22.
//

import SwiftUI

struct MenuItemView: View {
    @Binding var currentTab: Tab
    @Binding var isFocusable: Bool
    var title: String = ""
    var image: Image = Image(systemName: "questionmark.circle")
    var tab: Tab
    
    var body: some View {
        Button {} label: {
            if tab == .profile { image.renderingMode(.original) }
            else { Text(title) }
        }
        .disabled((currentTab != tab && !isFocusable))
        .buttonStyle(TopMenuItemStyle(onFocusChange: { isFocused in
            if currentTab == tab { isFocusable = false }
            guard isFocused else { return }
            isFocusable = true
            currentTab = tab
        }))
    }
}
