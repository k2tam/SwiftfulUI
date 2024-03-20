//
//  BackgroundFillViewModifier.swift
//
//
//  Created by k2 tam on 20/3/24.
//

import SwiftUI

struct BackgroundFillViewModifier: ViewModifier {
    let color: Color
    let cornerRadius: CGFloat
    
    func body(content: Content) -> some View {
        content
            .background(color)
            .cornerRadius(cornerRadius)
    }
}

public extension View {
    
    /// Add a color background with corner adius
    func withBackground(color: Color, cornerRadius: CGFloat = 0 ) -> some View {
        modifier(BackgroundFillViewModifier(color: color, cornerRadius: cornerRadius))
    }
}

struct BackgroundFillViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello 👻")
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            .withBackground(color: .red,cornerRadius: 25)
        
    }
}
