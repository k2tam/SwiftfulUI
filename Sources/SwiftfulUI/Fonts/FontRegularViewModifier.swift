//
//  FontRegularViewModifier.swift
//
//
//  Created by k2 tam on 20/3/24.
//

import SwiftUI

struct FontRegularViewModifier: ViewModifier {
    let font: Font
    let color: Color
    let lineLimit: Int?
    let minimumScaleFactor: CGFloat
    
    func body(content: Content) -> some View {
        content
            .font(font)
            .foregroundColor(color)
            .lineLimit(lineLimit)
    }
}

public extension View {
    
    /// Convenience method for adding font-related modifiers.
    func withFont(font: Font, color: Color, lineLimit: Int? = nil, minimumScaleFactor: CGFloat = 1) -> some View {
        self.modifier(FontRegularViewModifier(font: font, color: color, lineLimit: lineLimit, minimumScaleFactor: minimumScaleFactor))
    }
}


struct FontRegularViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello, world.")
            .withFont(font: .system(size: 20), color: .blue, lineLimit: 1)
    }
}
