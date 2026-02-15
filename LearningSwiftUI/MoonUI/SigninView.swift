//
//  SigninView.swift
//  LearningSwiftUI
//
//  Created by Saravanan V on 05/02/26.
//

import SwiftUI

struct SigninView: View {
    var body: some View {
        
        VStack(alignment:.center){
            
            Image("signin")
                .resizable()
                .scaledToFit()
            
            SignIn()
                
            Spacer()
            
            SignButton()
            
            Spacer()
            
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color("background"))
        .ignoresSafeArea()
    }
    
    private func SignIn() -> some View {
        VStack(spacing: 8){
            Text("We are what we do")
                 .font(.largeTitle)
                 .fontWeight(.bold)
             
             
             
             Text("Thousand of people are usign silent moon for smalls meditation")
                 .multilineTextAlignment(.center)
                 .foregroundStyle(.black.opacity(0.5))
        }
    }

    
    private func SignButton() -> some View {
        VStack(spacing: 12){
           
            
            NavigationLink {
                
                LoginView()
                
            } label: {
                Text("SIGN UP")
                    .fontWeight(.semibold)
                    .font(.title2)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity,minHeight: 55)
                   
            }
            .buttonStyle(.plain)
            .background(Color("primary"))
            .clipShape(RoundedRectangle(cornerRadius: 27.5))
            .padding(.horizontal)
            
            HStack{
                Group{
                    Text("ALREADY HAVE AN ACCOUNT?")
                        .foregroundStyle(.black.opacity(0.6))
                    Button {
                    } label: {
                        Text("LOG IN")
                            .foregroundStyle(Color("primary"))
                    }

                }.font(.headline)
                    .fontWeight(.semibold)
            }
        }
       
    }

}





#Preview {
    SigninView()
}
