//
//  radioButton.swift
//  BasicsUi
//
//  Created by Maaz on 07/02/24.
//

import SwiftUI

struct styleOfradioButton	 : ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button( action: {
            configuration.isOn.toggle()
        }, label: {
            HStack{
                ZStack{
                    Circle()
                        .fill( configuration.isOn ? .blue : .black)
                        .frame(width: 20)
                    Circle()
                        .fill(.white)
                        .frame(width: 18)
                    Circle()
                        .fill(configuration.isOn ? .blue : .white)
                        .frame(width: 10)
                }
                configuration.label
            }
        }
        )
    }
    
}
    
    
    struct radioButton: View {
        enum Flavor: String, CaseIterable, Identifiable {
            case chocolate, vanilla, strawberry
            var id: Self { self }
        }
        @State private var selectedFlavor: Flavor = .chocolate
        @State private var isSelected = false
        @State private var seleted1 = false
        @State private var seleted2 = false
        @State private var seleted3 = false
        @State private var seleted4 = false
        @State private var seleted5 = false
        @State private var seleted6 = false
        var body: some View {
            VStack{
                Text("Quiz Game")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .padding()
                // question 1
                
                VStack{
                    Text("1.  what is a tree ?")
                        .padding()
                    Toggle(isOn :$seleted4){
                        Text("source of O2   ")
                        
                    }
                    .toggleStyle(styleOfradioButton())
                    Toggle(isOn :$seleted5){
                        Text("source of H2O")
                    }
                    .toggleStyle(styleOfradioButton())
                    Toggle(isOn :$seleted6){
                        Text("source of CO2")
                    }
                    .toggleStyle(styleOfradioButton())
                }
                .position(x:150,y:90)
                .foregroundColor(.black)
                .padding(.leading)
                
                
                //            Toggle(
                
                List {
                    Picker("Flavor", selection: $selectedFlavor) {
                        Text("Chocolate").tag(1)
                        Text("Vanilla").tag(2)
                        Text("Strawberry").tag(3)
                    }
                    .pickerStyle(.menu)
                }
                .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
            }
            
            
            .onTapGesture {
                withAnimation(){
                    seleted1.toggle()
                    seleted2.toggle()
                    seleted3.toggle()
                }
            }
            
        }
    }
    
    #Preview {
        radioButton()
    }
