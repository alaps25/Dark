//
//  TextFieldStyles.swift
//  Dark
//
//  Created by Alap Shah on 03.01.23.
//


//Usage
//@State var createForm = ""
//TextInputField("Tag", text:$createForm)


import Foundation
import SwiftUI

struct TextInputField: View {
    
    var title: String
    @Binding var text: String
    
    init(_ title: String, text: Binding<String>){
        self.title = title
        self._text = text
    }
    
    var body: some View {
        ZStack(alignment: .leading){
            Text(title)
                .defaultTextStyle()
                .scaleEffect(text.isEmpty ? 1: 0.8, anchor: .leading)
                .offset(y:text.isEmpty ? 0 :-25)
            TextField("", text:$text)
                .defaultTextStyle()
            Divider()
                .frame(height: 1.0)
                .background(Color.white)
                .padding(.top, 48.0)
        }
        .padding(.top, 16.0)
        
    }
    
}

