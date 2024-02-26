//
//  SwiftUIView.swift
//  BasicsUi
//
//  Created by Maaz on 09/02/24.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var isOn1 = false
    @State private var isOn2 = false
    @State private var isOn3 = false
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        Button(action:{
            isOn1.toggle()
            isOn2 = false
            isOn3 = false
        }){
            Image(systemName: isOn1 ? "largecircle.fill.circle" : "circle")
                .foregroundColor(isOn1 ? .blue : .black)
            Text("Male")
        }
        
        
        Button(action:{
            isOn2.toggle()
                isOn1 = false
            isOn3 = false
        }){
            Image(systemName: isOn2 ? "largecircle.fill.circle" : "circle")
                .foregroundColor(isOn2 ? .blue : .black)
            Text("Female")
        }
        
        Button(action:{
            isOn3.toggle()
                isOn1 = false
            isOn2 = false
        }){
            Image(systemName: isOn3 ? "largecircle.fill.circle" : "circle")
                .foregroundColor(isOn3 ? .blue : .black)
            Text("Trans")
        }
    }
}

#Preview {
    SwiftUIView()
}
