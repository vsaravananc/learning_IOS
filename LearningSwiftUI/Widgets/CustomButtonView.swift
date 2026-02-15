//
//  CustomButtonView.swift
//  LearningSwiftUI
//
//  Created by Saravanan V on 06/02/26.
//

import SwiftUI

struct CustomButtonView <Distination : View> : View {
    var text: String
    var distination: Distination
    var height: CGFloat = 55
    var buttonColor : Color = Color("primary")
    var textColor : Color = .white
    var body: some View {
        NavigationLink {
            distination
        } label: {
            Text(text)
                .font(.headline)
                .foregroundStyle(textColor)
                
        }
        .frame(maxWidth: .infinity
               ,minHeight: height)
        .foregroundStyle(.white)
        .background(buttonColor)
        .clipShape(
            RoundedRectangle(cornerRadius: 27)
        )
    }
}
