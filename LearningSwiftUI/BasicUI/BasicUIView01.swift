//
//  BasicUIView01.swift
//  LearningSwiftUI
//
//  Created by Saravanan V on 13/02/26.
//

import SwiftUI

struct BasicUIView01 : View {
    @State private var text = ""
    var body: some View {
        NavigationView{
           ScrollView{
               VStack{
                   ForEach(0..<100, id: \.self){ index in
                       Rectangle()
                           .frame(width: 300, height: 150)
                           .foregroundColor(.blue)
                   }
            }
                
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "chevron.backward")
                }
                ToolbarItem(placement: .principal) {
                    Text("App Bar")
                }
                ToolbarItem(placement: .keyboard) {
                    Text("App Bar")
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity,minHeight: 55)
                       
                        .background(Color.blue)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "chevron.forward")
                }
            }
            .toolbarTitleMenu(content: {
                Text("hh")
            })
            
        }
    }
}


#Preview {
    BasicUIView01()
}
