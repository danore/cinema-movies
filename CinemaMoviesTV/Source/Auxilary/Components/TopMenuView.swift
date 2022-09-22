//
//  TopMenuView.swift
//  CinemaMoviesTV
//
//  Created by Daniel Orellana on 21/09/22.
//

import SwiftUI

struct TopMenuView: View {
    @FocusState var focused
    @Binding var currentTab: Tab
    
    var body: some View {
        ZStack {
            Color.red
            HStack {
                Rectangle()
                    .frame(width: 150, height: 60, alignment: .leading)
                    .padding(.leading, 25)
                
                Spacer()
                
                HStack {
                    Button {} label: {
                        Text("HOME")
                    }
                    .buttonStyle(TopMenuButtonStyle(onFocusChange: { isFocused in
                        guard isFocused else { return }
                        currentTab = .home
                        AppState.shared.selectedTab = .home
                    }, currentTab: .home))
                    
                    Button { } label: {
                        Text("SERIES")
                    }
                    .buttonStyle(TopMenuButtonStyle(onFocusChange: { isFocused in
                        guard isFocused else { return }
                        currentTab = .series
                        AppState.shared.selectedTab = .series
                    }, currentTab: .series))
                    
                    Button {} label: {
                        Text("GAMES")
                    }
                    .buttonStyle(TopMenuButtonStyle(onFocusChange: { isFocused in
                        guard isFocused else { return }
                        currentTab = .games
                        AppState.shared.selectedTab = .games
                    }, currentTab: .games))

                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "person")
                        .renderingMode(.original)
                }
                .padding(.trailing, 25)
                .buttonStyle(TopMenuButtonStyle(onFocusChange: { isFocused in
                    guard isFocused else { return }
                    currentTab = .profile
                    AppState.shared.selectedTab = .profile
                }, currentTab: .profile))
            }
        }
        .frame(height: 100)
    }
}

struct TopMenuView_Previews: PreviewProvider {
    static var previews: some View {
        TopMenuView(currentTab: .constant(.home))
    }
}
