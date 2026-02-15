//
//  CustomAuthView.swift
//  LearningSwiftUI
//
//  Created by Saravanan V on 06/02/26.
//

import SwiftUI

struct CustomAuthView: View {
    var title : String
    var body: some View {
        ZStack(alignment:.topLeading){
           Image("loginUI")
               .resizable()
               .scaledToFit()
               .frame(width: 300, height: 230)
           
           Image(systemName: "arrow.backward")
               .padding(10)
               .background(Circle().stroke(.black.opacity(0.4), lineWidth: 1))
              
           
           
            VStack(alignment:.center,spacing: 12){
                Spacer()
               
               Text(title)
                   .font(.title)
                   .fontWeight(.bold)
               
               Button {
                   
               } label: {
                   Text("CONTINUE WITH FACEBOOK")
                       .foregroundStyle(.white)
                       .font(.headline)
                       .fontWeight(.light)
               }.frame(maxWidth: .infinity,minHeight: 55)
               .background(Color("primary"))
               .clipShape(RoundedRectangle(cornerRadius: 27))
               
               Button {
                   
               } label: {
                   Text("CONTINUE WITH APPLE")
                       .foregroundStyle(.black)
                       .font(.headline)
                       .fontWeight(.light)
               }
               .frame(maxWidth: .infinity,minHeight: 55)
               .background(
                RoundedRectangle(cornerRadius: 27)
                    .stroke(.black.opacity(0.5), lineWidth: 1)
            )
                
                Spacer()
                   
               
           }.offset(x:0,y:50)
           
       }.padding(.vertical,30)
        
    }
}
