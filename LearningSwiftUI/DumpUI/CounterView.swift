//
//  CounterView.swift
//  LearningSwiftUI
//
//  Created by Saravanan V on 05/02/26.
//

import SwiftUI

struct CounterView : View {
    @State private var count : Int = 0
    var body : some View {
        ZStack(alignment:.bottomTrailing){
            VStack(alignment: .center, content: {
                Text("Count :  \(count)")
            }).frame(maxWidth: .infinity,maxHeight: .infinity)
            
            Button {
                count += 1
            } label: {
                Image(systemName: "plus")
                    .padding()
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .background(Color.blue)
                    .clipShape(.circle)
                    
            }
        }.padding()
    }
    
}

#Preview {
    CounterView()
}
