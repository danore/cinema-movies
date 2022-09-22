//
//  CardView.swift
//  CinemaMoviesTV
//
//  Created by Daniel Orellana on 22/09/22.
//

import SwiftUI

struct CardView: View {
    @FocusState var isFocused

    var body: some View {
        Button(
            action: { },
            label: {
                VStack(spacing: 4) {
                    Image("image1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 400, height: 225)
                        .clipped()
                        .shadow(radius: 18, x: 0, y: isFocused ? 50 : 0)

                    Text("Title")
                        .foregroundColor(isFocused ? .white : .black)

                }
            }
        )
        .overlay(content: {
            Rectangle()
                .stroke(
                    Color.white,
                    lineWidth: isFocused ? 4 : .zero
                )
        })
        .focused($isFocused)
        .buttonStyle(PressHandlingStyle())
        .scaleEffect(isFocused ? 1.05 : 1)
        .animation(.easeOut(duration: isFocused ? 0.12 : 0.35), value: isFocused)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
