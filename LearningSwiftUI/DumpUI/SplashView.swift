//
//  SplashView.swift
//  LearningSwiftUI
//
//  Created by Saravanan V on 29/01/26.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack(
            alignment: .top,
            content: {
                Image("splash")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                VStack {
                    Text("Aspen")
                        .font(
                            .system(size: 90, weight: .medium, design: .rounded)
                        )
                        .foregroundStyle(.white)
                        .padding(.top)
                    Spacer()
                    
                    VStackLayout(
                        alignment: .leading,
                        spacing: 10,
                    ) {
                        Group {
                            Text("Plan your ")
                            Text("Luxurious Vacation")
                        }.font(.title)
                            .fontWeight(.medium)
                            .foregroundStyle(.white)
                        
                        NavigationLink {
                            ContentView()
                        } label: {
                            Text("Explore")
                                .frame(maxWidth: .infinity, minHeight: 40)
                        }.buttonStyle(.borderedProminent)
                        
                    }.padding(.bottom, 25)
                    
                }.padding()
                
            }
        )
    }
}

#Preview {
    SplashView()
}
