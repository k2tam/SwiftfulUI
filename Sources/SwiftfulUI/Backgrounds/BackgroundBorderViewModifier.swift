//
//  File.swift
//  
//
//  Created by k2 tam on 20/3/24.
//

import SwiftUI

struct BackgroundBorderViewModifier: ViewModifier {
    let borderColor: Color
    let borderWidth: CGFloat
    let cornerRadius: CGFloat
    
    func body(content: Content) -> some View {
        content
            .background(Color.white.opacity(0.0001))
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .strokeBorder(borderColor, lineWidth: borderWidth)
            )
    
    }
    
}

public extension View {
    ///Add a colored border to the background
    func withBorder(
        color: Color,
        width: CGFloat,
        cornerRadius: CGFloat = 0) -> some View {
            modifier(BackgroundBorderViewModifier(borderColor: color, borderWidth: width, cornerRadius: cornerRadius))
        }
}

struct BackgroundBorderViewModifier_Previews: PreviewProvider {
    
    static var previews: some View {
        VStack {
            Text("Hello, World")
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .withBorder(color: .blue, width: 2, cornerRadius: 15)
        }
    }
}
