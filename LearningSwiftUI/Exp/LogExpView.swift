//
//  LogExpView.swift
//  LearningSwiftUI
//
//  Created by Saravanan V on 12/02/26.
//

import SwiftUI

struct LogExpView: View {
    @State var showSheet: Bool = false
    var body: some View {
        VStack{
            Button {
                showSheet.toggle()
            } label: {
                Text("Edit Profile")
            }

        }
        .sheet(isPresented: $showSheet) {
           LoginView()
                .presentationCornerRadius(20)
                .interactiveDismissDisabled(true)
                
        }
        
    }
}

#Preview {
    LogExpView()
}
