//
//  CustomTextView.swift
//  LearningSwiftUI
//
//  Created by Saravanan V on 05/02/26.
//

import SwiftUI

struct CustomTextView: View {
    
    @Binding var text: String
    var placeholder: String
    var UIKeyboardType: UIKeyboardType
    var textContentType: UITextContentType
    var submitLabel: SubmitLabel
    
    var body: some View {
        TextField(text: $text) {
            
            Text(placeholder)
                .font(.title2)
                .fontWeight(.light)
                .foregroundStyle(.gray)
            
        }.frame(maxWidth: .infinity,minHeight: 60)
            .padding(.horizontal)
            .background(
                Color.gray.opacity(0.1)
            )
            .clipShape(.buttonBorder)
            .keyboardType(UIKeyboardType)
            .textContentType(textContentType)
            .submitLabel(submitLabel)
        
        
    }
}
