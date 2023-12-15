//
//  TagsPage.swift
//  Dark
//
//  Created by Alap Shah on 02.01.23.
//

import Foundation
import SwiftUI

struct TagsPage: View {
    var body: some View {
    
        VStack(alignment: .leading, spacing: 0.0){
            
            //header
            HStack(){
                    Text("All Tags").defaultTextStyle()
                    Spacer()
                    Button {
                    }
                    label: {
                        Image(systemName: "plus")
                            .frame(width: 24, height: 24)
                    }
                    .buttonStyle(EmptyButton())
                }
                    .foregroundColor(.white)
                    .padding(.all, 32.0)
                    .background(LinearGradient(gradient: Gradient(colors: [
                        .black,
                        .black,
                        .black,
                        .black .opacity(0.6),
                        .black .opacity(0),
                    ]),startPoint: .bottom, endPoint: .top))
            
            
            //Taglist
            
            VStack(alignment: .leading){
                //Search
                VStack(spacing: 4.0){
                    TextField("Search tags", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/).defaultTextStyle()
                    
                    Divider()
                        .frame(height: 1.0)
                        .background(Color.white)
                }
                .frame(height: 48.0)
                
                
                //tags
                Button("#events") {
                }
                .buttonStyle(GreenTextButton())
                
                Button("#notsafe") {
                }
                .buttonStyle(GreenborderButton())
                
                Button("#free") {
                }
                .buttonStyle(GreenborderButton())
                
                Button("#sale") {
                }
                .buttonStyle(GreenborderButton())
                
                Spacer()
            }
            .padding(.horizontal, 32.0)
            .background(.black)
            
            
        }
        
        
        
       
    }
}

struct TagsPageView_Previews: PreviewProvider {
    static var previews: some View {
        TagsPage()
    }
}
