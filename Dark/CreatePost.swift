//
//  CreatePost.swift
//  Dark
//
//  Created by Alap Shah on 02.01.23.
//

import SwiftUI
import MapKit

struct CreatePost: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    var body: some View {
   
        
        ZStack(){
            //Map underneath with pointer
            Map(coordinateRegion: $region, showsUserLocation: true)
                .frame(
                      minWidth: 0,
                      maxWidth: .infinity,
                      minHeight: 0,
                      maxHeight: .infinity,
                      alignment: .topLeading
                )
                .preferredColorScheme(.dark)
            
            //UI on map
            VStack(alignment: .leading, spacing: 0.0){
                
                //Header buttons
                HStack(){
                    
                    Text("Cancel")
                        .frame(height: 48.0)
                        .defaultTextStyle()
                    
                    Spacer()
                    
                    Button("Next") {}.buttonStyle(GreenborderButton())
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
                        Text("1/2").titleTextStyle()
                        Text("Pick location").titleTextStyle()
                        
                    }
                    
                    Spacer()
                    
                }
                    .padding(.horizontal, 32.0)
                    .padding(.vertical, 24.0)
                    .background(.black)
                
                //Search location
                VStack(){
                    
                    HStack(alignment: .center, spacing: 8.0){
                        Image(systemName: "location")
                        TextField("Search map", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .defaultTextStyle()
                    }
                    .padding(.leading, 0.0)
                    .padding(.bottom, 2.0)
                    
                    Divider()
                        .frame(height: 1.0)
                        .background(Color.white)
                        
                }
                .padding(.bottom, 48.0)
                .padding(.horizontal, 32.0)
                .background(.black)
                
                
                Spacer()
                
                //show location
                HStack(){
                    Button("1.4567, 0.234523") {}.buttonStyle(MapUpdateButton())
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 24.0)
                
            }
            
            
            
            
            
        }
    }
}

struct CreatePost_Previews: PreviewProvider {
    static var previews: some View {
        CreatePost()
    }
}
