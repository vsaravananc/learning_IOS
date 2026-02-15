//
//  LoginView.swift
//  LearningSwiftUI
//
//  Created by Saravanan V on 05/02/26.
//

import SwiftUI

struct LoginView : View {
    @State var email : String = ""
    @State var password : String = ""
    var body : some View {
        ScrollView{
            VStack{
                
                CustomAuthView(title: "Welcome Back!")
                loginInfo
               
                Text("Don't have an account? Sign up")
                    .fontWeight(.medium)
                    .foregroundColor(.blue)
                    .padding(.top,30)
                
            }
        }
        .background(Color("background"))
        .padding(.horizontal)
        .navigationBarBackButtonHidden()
        .scrollIndicators(.hidden)
    }
    
    
    
    private var loginInfo : some View {
        VStack(spacing: 12){
            
            Text("OR LOG IN WITH")
                .fontWeight(.bold)
                .font(.headline)
                .foregroundStyle(.gray.opacity(0.8))
                .padding(.bottom,12)
            
            CustomTextView(
                text:$email
               ,placeholder: "Email addres",
                UIKeyboardType: .emailAddress,
                textContentType: .emailAddress,
                submitLabel: .next
            )
            
            CustomTextView(
                text:$password
               ,placeholder: "Password",
                UIKeyboardType: .default,
                textContentType: .password,
                submitLabel: .done
            )
            
            CustomButtonView(text: "LOG IN", distination: CreateAccountView())
                .padding(.top,20)
            Text("Forgot password?")
                .fontWeight(.medium)
        }
    }
    
    
}

#Preview {
    LoginView()
}
