//
//  SimplePage2.swift
//  BasicsUi
//
//  Created by Maaz on 09/02/24.
//

import SwiftUI

struct SimplePage2: View {
    var name : String
    var date : Date
    var selection : String
    var selectedLangs : [String]
    var CommentText : String
    var Gender : String
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.white)
                .frame(width: 300,height: 600)
                .border(Color.black)
                .cornerRadius(3.0)
            
            VStack{
                Form{
                    Text("Name : \(name)")
                    
                    Text("date of birth : \(date)")
                    
                    Text("Country : \(selection)")
                    
                    Text("Gender : \(Gender)")
                    
                    Text("Languages :\(selectedLangs.joined(separator: ", "))")

                    Text("Comment : \(CommentText)")

                }
                
            }

        }
    }
}

//
//#Preview {
////    SimplePage2()
////}
