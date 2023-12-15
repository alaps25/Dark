//
//  PostsListView.swift
//  Dark
//
//  Created by Alap Shah on 02.01.23.
//

import SwiftUI

struct PostsListRowView: View {
    var body: some View {
       
        //PostInList
        
        VStack(alignment: .leading, spacing: 16.0){
            
            
            //title
            Text("Posts").defaultTextStyle()
            
            //Single post
            HStack(alignment: .top, spacing: 16.0){
                Image(systemName: "picture")
                    .frame(width: 56.0, height: 66.0)
                    .background(Color(red: 0.24313725490196078, green: 0.24313725490196078, blue: 0.24313725490196078))
                    .cornerRadius(8.0)
                
                //content
                VStack(alignment: .leading){
                    Text("Title").defaultTextStyle()
                    Text("Description").miniTextStyle()
                    
                    HStack(){
                        Text("1km away").miniTextStyle()
                        Spacer()
                        Text("8m ago").miniTextStyle()
                    }
                    .padding(.top, 16.0)
                }
                
            }
            
            
            
            
        }
        .padding(32.0)
        .foregroundColor(.white)
        .background(.black)
        
    }
}

struct PostsListRowView_Previews: PreviewProvider {
    static var previews: some View {
        PostsListRowView()
    }
}
