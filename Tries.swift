//
//  Tries.swift
//  BasicsUi
//
//  Created by Maaz on 07/02/24.

import SwiftUI



struct Tries: View {
    @State public var ns = true
    @State private var a = ["h","k","o"]
    @State public var lst :[String] = []
    var body: some View {

        Button("click"){
            print(lst)
        }
        ForEach(0..<a.count,id: \.self){i in CheckButtons(label: a[i],list: $lst)
        }
        
        }
}



    
    
#Preview {
    Tries()
}





//                    Button(action:{
//                        isOn1.toggle()
//                        isOn2 = false
//                        isOn3 = false
//                    }){
//                        Image(systemName: isOn1 ? "largecircle.fill.circle" : "circle")
//                            .foregroundColor(isOn1 ? .blue : .black)
//                        Text("Male")
//                    }
//
//
//                    Button(action:{
//                        isOn2.toggle()
//                        isOn1 = false
//                    }){
//                        Image(systemName: isOn2 ? "largecircle.fill.circle" : "circle")
//                            .foregroundColor(isOn2 ? .blue : .black)
//                        Text("Female")
//                    }
//                    .padding()

//                        Toggle(isOn: $selected1) {
//                            Text("English")
//                        }
//                        .toggleStyle(styleForCheckBox())
//                        Toggle(isOn: $selected2) {
//                            Text("Arabic")
//                        }
//                        .toggleStyle(styleForCheckBox())
//                        Toggle(isOn: $selected3) {
//                            Text("Tamil")
//                        }
//                        .toggleStyle(styleForCheckBox())
//                        .onChange(of: selected1) {
//                            if(selected1){
//                                selectedLangs.append("English-")
//                            }else{
//                                selectedLangs=selectedLangs.replacingOccurrences(of: "English-", with: "")
//                            }
//                        }
//                        .onChange(of: selected2) {
//                            if(selected2){
//                                selectedLangs.append("Arabic-")
//                            }else{
//                                selectedLangs=selectedLangs.replacingOccurrences(of: "Arabic", with: "")
//                            }
//                        }
//
//                        .onChange(of: selected3) {
//                            if(selected3){
//                                selectedLangs.append("Tamil")
//                            }else{
//                                selectedLangs=selectedLangs.replacingOccurrences(of: "Tamil", with: "")
//                            }
//                        }
//
//struct ButtonStyles: ButtonStyle{
////    @Binding var lists : [String]
//    @State var name : [ButtonStyleConfiguration.Label]
//    @State private var bool : Bool = false
//    
//    func makeBody(configuration: Configuration) -> some View {
//        
//        Button(action:{
//            bool.toggle()
//            name.append(configuration.label)
//            print(configuration.label)
//           
//        }){
//            HStack{
//                ZStack{
//                    Rectangle()
//                        .fill(Color.white)
//                        .border(Color.black)
//                        .cornerRadius(3.0)
//                        .frame(width: 25,height: 25)
//                    Image(bool ? "tickForCheckBox" : "")
//                        .resizable()
//                        .frame(width: 20,height: 20)
//                }
//                configuration.label
//            }
////            .onLongPressGesture(minimumDuration: 0.1){
////                bool.toggle()
////            }
//            
//        }
//    }
//    }
