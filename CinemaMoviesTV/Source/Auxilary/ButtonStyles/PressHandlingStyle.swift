//
//  PressHandlingStyle.swift
//  CinemaMoviesTV
//
//  Created by Daniel Orellana on 22/09/22.
//

import SwiftUI

struct PressHandlingStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? (1 / 1.15) : 1)
    }
}
