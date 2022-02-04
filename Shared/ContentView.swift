//
//  ContentView.swift
//  Shared
//
//  Created by Paulina on 1/28/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var circleModel = Circle()
    @State var radiusString = "1.0"
    
    var body: some View {
        
        VStack{
            Text("Radius")
                .padding(.top)
                .padding(.bottom, 0)
            TextField("Enter Radius", text: $radiusString, onCommit:
                  {Task.init {await self.calculateCircle()}})  //truncated: instead of calculateCircle, need bounding box
                .padding(.horizontal)
                .frame(width: 100)
                .padding(.top, 0)
                .padding(.bottom, 30)
            HStack {
               VStack{
            Text("Area")
                .padding(.bottom, 0)
            TextField("", text: $circleModel.areaText) //areaText
                .padding(.horizontal)
                .frame(width: 100)
                .padding
                   
            }
        }
            
        }
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
