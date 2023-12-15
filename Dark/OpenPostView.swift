//
//  OpenPost.swift
//  Dark
//
//  Created by Alap Shah on 03.01.23.
//

import SwiftUI

struct OpenPostView: View {
    
    
    var body: some View {
        
            
            //UI on map
            VStack(alignment: .leading, spacing: 24.0){
                
                
                
                //header
                HStack(){
                    
                    VStack(alignment: .leading){
                        Text("Title").defaultTextStyle()
                        Text("#artweek").defaultTextStyle().foregroundColor(.theGreen)
                    }
                    
                    Spacer()
                    
                    Button {
                    }
                    label: {
                        Image(systemName: "plus")
                            .frame(width: 24, height: 24)
                    }
                    .buttonStyle(EmptyButton())
                    
                }
                
                //image
                Image(systemName: "picture")
                    .frame(maxWidth: .infinity)
                    .frame(height: 120.0)
                    .background(Color(red: 0.24313725490196078, green: 0.24313725490196078, blue: 0.24313725490196078))
                    .cornerRadius(8.0)
                
                //Description
                Text("Bla bla").defaultTextStyle()
                HStack {
                    Text("1km away").miniTextStyle()
                    Spacer()
                    Text("8m ago").miniTextStyle()
                }
                
                HStack {
                    Spacer()
                    Button {
                    }
                    label: {
                        Image(systemName: "exclamationmark.bubble")
                            .frame(width: 24, height: 24)
                    }
                    .buttonStyle(EmptyButton())
                    Button {
                    }
                    label: {
                        Image(systemName: "square.and.pencil")
                            .frame(width: 24, height: 24)
                    }
                    .buttonStyle(EmptyButton())
                    Button {
                    }
                    label: {
                        Image(systemName: "square.and.arrow.up")
                            .frame(width: 24, height: 24)
                    }
                    .buttonStyle(EmptyButton())
                }
                .padding(.top, 24.0)
                
            }
            .padding(.all, 32.0)
            .background(LinearGradient(gradient: Gradient(colors: [
                    .black,
                    .black,
                    .black,
                    .black,
                    .black,
                    .black,
                    .black,
                    .black,
                    .black,
                    .black .opacity(0.6),
                    .black .opacity(0),
                ]),startPoint: .bottom, endPoint: .top))
            .foregroundColor(.white)
     
            
        
    }
}

struct OpenPostView_Previews: PreviewProvider {
    static var previews: some View {
        OpenPostView()
    }
}
