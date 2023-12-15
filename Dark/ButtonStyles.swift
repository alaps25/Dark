//
//  ButtonStyles.swift
//  Dark
//
//  Created by Alap Shah on 02.01.23.
//

import Foundation
import SwiftUI


//Standard button styles
struct GreenTextButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.all, 16.0)
            .background(Color.theGreen)
            .background(configuration.isPressed ? Color.theGreen.opacity(0.5) : Color.theGreen)
            .foregroundColor(Color.black)
            .cornerRadius(8.0)
            .font(.system(size: 16, weight: .medium,  design: .monospaced))
    }
}



struct GreenborderButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.all, 16.0)
            .background(.black)
            .foregroundColor(Color.theGreen)
            .font(.system(size: 16, weight: .medium,  design: .monospaced))
            .cornerRadius(8)
            .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .strokeBorder((Color.theGreen), lineWidth: 1)
                    )
    }
}

struct WhiteButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.all, 16.0)
            .background(.white)
            .foregroundColor(.black)
            .cornerRadius(8.0)
            .font(.system(size: 16, weight: .medium,  design: .monospaced))
    }
}

struct EmptyButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.all, 16.0)
            //.background(.black)
            .foregroundColor(.white)
            .cornerRadius(8.0)
            .font(.system(size: 24, weight: .medium,  design: .monospaced))
    }
}


struct MapUpdateButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(height: 36)
            .padding(.horizontal, 16.0)
            .background(.black)
            .foregroundColor(.white)
            .cornerRadius(24.0)
            .defaultTextStyle()
    }
}


