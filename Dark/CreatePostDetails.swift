//
//  CreatePost.swift
//  Dark
//
//  Created by Alap Shah on 02.01.23.
//

import SwiftUI

struct CreatePostDetails: View {
   
   @State var createForm = ""
    
    var body: some View {
   
        
        
            VStack(alignment: .leading, spacing: 0.0){
                
                //Header buttons
                HStack(){
                    
                    Text("Back")
                        .frame(height: 48.0)
                        .defaultTextStyle()
                    
                    Spacer()
                    Button("Post") {}.buttonStyle(GreenTextButton())
                }
                    .padding(.horizontal, 32.0)
                    .padding(.vertical, 24.0)
                    .background(.black)
                
                
                //divider
                Divider()
                    .frame(height: 1.0)
                    .background(Color.gray)
                
                
                //Header
                HStack(){
                    VStack(alignment: .leading, spacing: 0.0){
                        Text("2/2").titleTextStyle()
                        Text("Create post").titleTextStyle()
                        
                    }
                    
                    Spacer()
                    
                }
                    .padding(.horizontal, 32.0)
                    .padding(.vertical, 24.0)
                    .background(.black)
                
                
                //Form
                VStack(spacing: 24.0){
                    
                    //upload image
                    Button() {
                    }
                        label: {
                            Label("Upload photo", systemImage: "photo")
                            .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(GreenborderButton())
                      
                    TextInputField("Title", text:$createForm)
                    
                    //select tag
                    VStack(){
                        HStack(){
                            Text("Select tag").defaultTextStyle()
                            Spacer()
                            Image(systemName: "chevron.down")
                        }
                        Divider()
                                        .frame(height: 1.0)
                                        .background(Color.white)
                                        .padding(.top, 4.0)
                    }
                    .padding(.top, 24.0)
                    
                    TextInputField("Description", text:$createForm)
                    
                    Spacer()
                        
                }
                    .padding(.horizontal, 32.0)
                
               
                
            }
                .background(.black)
                .foregroundColor(.white)
            
            
            
            
            
        }
    }


struct CreatePostDetails_Previews: PreviewProvider {
    static var previews: some View {
        CreatePostDetails()
    }
}
