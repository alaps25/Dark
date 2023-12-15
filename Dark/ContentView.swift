//
//  ContentView.swift
//  DarkMaps
//
//  Created by Alap Shah on 19.12.22.
//

import SwiftUI
import MapKit

//Standard colours
extension Color {
    static let theGreen = Color(red: 0.0196078431372549, green: 1.0, blue: 0.0)
}

    struct ContentView: View {
        
        //Create post popup
        @State var createPostIsPresented = false
    
        //open post popup
        @State var openPostIsPresented = false
        
    //for map
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    
    var body: some View {
       
        ZStack{
            
            //All under
            
                
                    //The Map itself
                    Map(coordinateRegion: $region, showsUserLocation: true)
                        .frame(
                              minWidth: 0,
                              maxWidth: .infinity,
                              minHeight: 0,
                              maxHeight: .infinity,
                              alignment: .topLeading
                        )
                        .preferredColorScheme(.dark)
                    
                    
            
                    //My location
            
                    VStack(alignment: .leading, spacing: 0.0){
                        
                        Image("white_rabbit")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 16, height: 16)
                            .foregroundColor(.white)
                            .padding(.all, 20)
                            .background(.black)
                            .cornerRadius(16)
                            .fontWeight(.light)
                        
                        Path { path in
                                    path.move(to: CGPoint(x : 20, y : 0))
                                    path.addLine (to : CGPoint(x: 0, y : 0))
                                    path.addLine (to : CGPoint(x: 40, y : 0))
                                    path.addLine (to : CGPoint(x: 30, y : 10))
                                }
                                .fill(Color.black)
                                
                    }
                        //padding not needed
                        .padding([.top, .leading], 200)
            
            
                    //Layer locations
                    Circle()
                        .fill(Color.theGreen)
                        .opacity(0.4)
                        .frame(width: 48, height: 48)
                        .onTapGesture {
                        openPostIsPresented.toggle()
                        }
                        
            
            

            
            //All above
            VStack{
                
                
                //Top Menu
                HStack(alignment: .center) {
                    
                    Button {
                    }
                        label: {
                            Image(systemName: "hexagon")
                                .frame(width: 24.0, height: 24.0)
                        }
                        .buttonStyle(EmptyButton())
                    
                    Spacer()
                    
                    VStack(){
                        
                        HStack(alignment: .center, spacing: 8.0){
                            Image(systemName: "location")
                            TextField("Search map", text: .constant(""))
                                .font(.system(size: 16, weight: .medium,  design: .monospaced))
                        }
                        .padding(.leading, 0.0)
                        .padding(.bottom, 4.0)
                        .frame(width: 140.0)
                        
                        Divider()
                            .frame(width: 140.0, height: 1.0)
                            .background(Color.white)
                        
                    }
                    
                    
                    Spacer()
                    
                    
                    Button {
                        createPostIsPresented.toggle()
                    }
                    
                    label: {
                        Image(systemName: "plus")
                            .frame(width: 24.0, height: 24.0)
                    }
                    .buttonStyle(EmptyButton())
                        
                    }
                    .padding(.horizontal, 24)
                    .padding(.top, 16)
                    .padding(.bottom, 32)
                    .background(LinearGradient(gradient: Gradient(colors: [
                        .black,
                        .black,
                        .black,
                        .black .opacity(0.6),
                        .black .opacity(0),
                    ]),
                                               startPoint: .top, endPoint: .bottom))
                    
                
                
                Spacer()
                
                
                
                //Bottom Menu
                
                VStack(spacing: 16.0){
                    
                    //Title and more
                    HStack(){
                        
                        Text("Layers")
                            .font(.system(size: 16, weight: .medium,  design: .monospaced))
                        
                        Spacer()
                        //Image(systemName: "chevron.up")
                    }
                    .padding(.horizontal, 32.0)
                    
                    
                    ScrollView(.horizontal){
                        
                        //Layers buttons
                        HStack(alignment: .bottom){
                            
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
                            
                            Button() {
                            }
                            label: {
                                Label("show more", systemImage: "square.2.layers.3d")
                            }
                            .buttonStyle(GreenborderButton())
                            
                        }
                        .padding(.leading, 32.0)
                        
                        
                    }
                    
                    
                }
                .padding(.top, 32.0)
                .padding(.bottom, 24.0)
                .background(LinearGradient(gradient: Gradient(colors: [
                    .black,
                    .black,
                    .black,
                    .black .opacity(0.6),
                    .black .opacity(0),
                ]),startPoint: .bottom, endPoint: .top))
                
            }
            .padding(0.0)
            
        }
            .sheet(isPresented: $createPostIsPresented) {
                CreatePost()
            }
            .sheet(isPresented: $openPostIsPresented) {
                OpenPostView()
            }
        
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
