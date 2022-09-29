//
//  TopMenuButtonStyle.swift
//  CinemaMoviesTV
//
//  Created by Daniel Orellana on 21/09/22.
//

import SwiftUI

struct TopMenuItemStyle: ButtonStyle {
    let onFocusChange: (Bool) -> Void
    @Environment(\.isFocused) private var focused: Bool

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .overlay(
                Rectangle()
                    .frame(height: focused ? 3 : .zero)
                    .offset(y: 4),
                alignment: .bottom
            )
            .contentShape(Rectangle())
            .scaleEffect(focused ? 1.3 : 1.0)
            .animation(.easeIn(duration: 0.5), value: focused)
            .onChange(of: focused) { newValue in
                onFocusChange(newValue)
            }
    }
}
