//
//  CreateAccountView.swift
//  LearningSwiftUI
//
//  Created by Saravanan V on 07/02/26.
//

import SwiftUI

struct CreateAccountView : View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmpassword: String = ""
    @State private var isChecked: Bool = false
    var body : some View {
        ScrollView{
           VStack{
               CustomAuthView(title: "Create your account")
               loginInfo
            }
           .padding(.horizontal)
           .navigationBarBackButtonHidden(true)
        }
    }
    
    private var loginInfo : some View {
        VStack(spacing: 12){
            
            Text("OR LOG IN WITH EMAIL")
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
            
            CustomTextView(
                text:$confirmpassword
               ,placeholder: "Confirm Password",
                UIKeyboardType: .default,
                textContentType: .password,
                submitLabel: .done
            )
            
            HStack{
                Text("I have read the Privace Policy")
                    .foregroundStyle(.gray.opacity(0.9))
                Spacer()
                Toggle("", isOn: $isChecked)
                    .toggleStyle(.button)
                    .frame(width: 30,height: 30)
                    .background(.gray.opacity(0.1), in: RoundedRectangle(cornerRadius: 2))
                    
            }
            
            CustomButtonView(text: "GET STARTED", distination: GetStartedView())
                .padding(.top,20)
           
        }
    }
}


#Preview {
    CreateAccountView()
}
