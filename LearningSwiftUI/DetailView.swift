//
//  Detail.swift
//  LearningSwiftUI
//
//  Created by Saravanan V on 04/02/26.
//

import SwiftUI

struct DetailView : View {
    @Environment(\.dismiss) var dismiss
    var body : some View {
        
        ScrollView{
            
            VStack{
                imageZtack()
            }
            .frame(maxWidth: .infinity
                    ,maxHeight: .infinity)
        }
        .padding(.horizontal)
        .navigationBarBackButtonHidden(true)
        
    }
    
    private func imageZtack() -> some View {
        
        ZStack(alignment: .topLeading){
            Image("locations").resizable()
                .scaledToFill()
                .frame(height: 400)
                .cornerRadius(18)
            
            Button {
                dismiss()
            } label: {
                Image(systemName: "chevron.backward")
                     .font(.title)
                     .padding()
                     .background(Color.white)
                     .cornerRadius(16)
                     .offset(x:8,y:8)
                     .shadow(radius: 8)
            }

            
            Image(systemName: "heart.fill")
                .foregroundStyle(Color.red)
                .padding()
                .background(Color.white)
                .cornerRadius(20)
                .offset(x:300,y:370)
                .shadow(radius: 8)
                
        }
    }
    
}





#Preview {
    DetailView()
}
