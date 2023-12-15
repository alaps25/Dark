//
//  TextStyles.swift
//  Dark
//
//  Created by Alap Shah on 02.01.23.
//

import Foundation
import SwiftUI

//.defaultTextStyle()
struct DefaultText: ViewModifier {
    func body(content: Content) -> some View {
        content
            //.foregroundColor(.white)
            .font(.system(size: 16, weight: .medium,  design: .monospaced))
    }
}

extension View {
    func defaultTextStyle() -> some View {
        modifier(DefaultText())
    }
}

// new one here

//.miniTextStyle()
struct MiniText: ViewModifier {
    func body(content: Content) -> some View {
        content
            //.foregroundColor(.white)
            .font(.system(size: 12, weight: .light,  design: .monospaced))
    }
}

extension View {
    func miniTextStyle() -> some View {
        modifier(MiniText())
    }
}


//.titleTextStyle()
struct TitleText: ViewModifier {
    func body(content: Content) -> some View {
        content
            //.foregroundColor(.white)
            .font(.system(size: 32, weight: .black))
    }
}

extension View {
    func titleTextStyle() -> some View {
        modifier(TitleText())
    }
}

