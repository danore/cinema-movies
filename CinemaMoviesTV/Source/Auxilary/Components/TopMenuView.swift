//
//  TopMenuView.swift
//  CinemaMoviesTV
//
//  Created by Daniel Orellana on 21/09/22.
//

import SwiftUI

struct TopMenuView: View {
    
    
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
                    .buttonStyle(HomeButtonStyle(onFocusChange: { isFocused in
                        
                    }))
                    
                    Button { } label: {}
                    .buttonStyle(HomeButtonStyle(onFocusChange: { isFocused in
                        
                    }))
                    
                    Button {} label: {
                        Text("GAMES")
                    }
                    .buttonStyle(HomeButtonStyle(onFocusChange: { isFocused in
                        
                    }))

                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "person")
                        .renderingMode(.original)
                }
                .buttonStyle(.plain)
            }
        }
        .frame(height: 100)
    }
}

struct TopMenuView_Previews: PreviewProvider {
    static var previews: some View {
        TopMenuView()
    }
}
