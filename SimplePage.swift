//
//  SimplePage.swift
//  BasicsUi
//
//  Created by Maaz on 08/02/24.
//

import SwiftUI

public var lists = [String]()

struct CheckButtons : View {
    var label : String
    @Binding var list : [String]
    @State private var isSelected : Bool = false
    var body: some View {
        Button(action: {
            isSelected.toggle()
            if isSelected{
                list.append(label)
            }
            else{
                list.removeAll(where: { $0 == label })
            }
        }){
                HStack{
//                    ZStack{
//                        Rectangle()
//                            .fill(Color.white)
//                            .border(Color.black)
//                            .cornerRadius(3.0)
//                            .frame(width: 25,height: 25)
                        Image(systemName: isSelected ? "tickForCheckBox" : "squareshape")
                            .resizable()
                            .frame(width: 20,height: 20)
                    }
                    Text(label)
//            }
        }
    }
}


struct radioButtons : View {
    var label : String
    var isSelected : Bool
    var action : ()-> Void
    var body: some View {
        Button(action: action){
                HStack{
                    Image(systemName: isSelected ? "circle.inset.filled" : "circle")
                        .foregroundColor(isSelected ? .blue: .black)
                    Text(label)
            }
        }
    }
}

struct SimplePage: View {

    //Nmae variable
    @State private var name=""
    //Date variable
    @State private var date = Date()
    //Country variable
    @State private var countrySelection = "India"
    @State private var countries = ["India","United States","Brazil","Austrialia"]
    //checkBox variable
    @State private var languagesList = ["English","Tamil","Spanish"]
    @State public var selectedLangs : [String] = []
    //RasioButton variable
    @State private var selectedGender : Int?
    @State private var genderOptions = ["Male","female"]
    // comment text holder
    @State private var CommentText = ""
// variable for togglebutton
    @State private var toggleBool = false

    @State private var passingGender = ""
    
    @State private var mode = false
    
    @State var color = Color.primary

    var body: some View {
    
            
            NavigationView{
            
                ZStack{
    
                    Color( mode ? color : .white)
                        .ignoresSafeArea()
                VStack{
                  
                    ColorPicker(selection: $color, label: {
                        Text("picker color for backGround")
                            .padding()
                    })
                    .padding(.trailing,250)
                    .padding(.bottom)
                    
                    Button("change color"){
                        mode.toggle()
                    }
                    .padding(.trailing,263)
                    .padding(.bottom)
                    
                    Text("Basic Form")
                        .font(.largeTitle)
                        .underline()
                    //TextField for name
                    HStack{
                        Text("Name:")
                            .padding(.leading)
                        TextField("  Enter your name", text: $name)
                            .border(Color.black)
                            .cornerRadius(3.0)
                            .padding()
                    }
                    //datepicker for dob
                    
                    DatePicker("Date-Of-Birth :", selection: $date, displayedComponents: [.date])
                        .padding(.leading)
                        .padding(.trailing,120)
                        .padding(.bottom)
                    
                    //Country selector
                    HStack{
                        Text("Country :")
                        
                        Picker("Country",selection: $countrySelection){
                            ForEach(countries, id: \.self) { countries in
                                Text(countries)
                            }
                        }
                        
                        .cornerRadius(3.0)
                        .padding(.leading,50)
                    }
                    .padding(.trailing,150)
                    .padding(.bottom)
                    
                    
                    
                    
                    //languages CheckBoxs
                    HStack{
                        Text("Languages:")
                            .padding(.leading)
                            .padding(.trailing)
                        ForEach(languagesList, id: \.self) { l in
                            CheckButtons(label: l, list: $selectedLangs)
                        }
                    }
                    
                    
                    .padding(.trailing,20)
                    .padding(.bottom)
                    
                    //Gender radiobutton
                    
                    HStack{
                        Text("Gender :")
                            .padding(.trailing)
                        ForEach(0..<genderOptions.count,id:\.self){
                            i in radioButtons(label: self.genderOptions[i], isSelected: self.selectedGender == i, action: {
                                actions(i: i)
                            })
                        }
                    }
                    .padding(.trailing,110)
                    .padding(.bottom)
                    
                    
                    //comments filed
                    
                    Text("Comment :")
                        .padding(.trailing,270)
                    TextEditor(text: $CommentText)
                        .foregroundColor(.black)
                        .border(Color.black)
                        .frame(width: 300,height: 100)
                        .cornerRadius(3.0)
                        .padding(.bottom)
                    
                    //do you have a phone
                    
                    Toggle(isOn: $toggleBool){
                        Text("Do you have a phone")
                    }
                    .padding([.leading,.trailing,.bottom])
                    
                    
                    
                    NavigationLink(destination: SimplePage2(name: name,date: date,selection: countrySelection,selectedLangs: selectedLangs,CommentText: CommentText,Gender: passingGender
                                                           )) {
                        
                        Text("Submit")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        
                    }
                    
                    
                }
                  
                                    .padding(.bottom,50)
            }
        
                //entire Vstack padding

           
        }
    }
    func actions(i : Int){
        selectedGender = i
        passingGender = genderOptions[i]
    }
}


#Preview {
    SimplePage()
}
