//
//  GetStartedView.swift
//  LearningSwiftUI
//
//  Created by Saravanan V on 09/02/26.
//

import SwiftUI

struct GetStartedView: View {
    var body: some View {
        ScrollView{
            
            VStack(alignment: .center, spacing: 20){
                
                Image("moon")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 30)
                
                getStartedContent()
                
                ZStack(alignment:.bottom){
                    Image("getstarted")
                        .resizable()
                        .scaledToFill()
                    
                    CustomButtonView(text: "Get Started",
                                     distination: ChooseTopicView(),
                                     buttonColor: .background,textColor: .black)
                    .padding([.horizontal, .bottom],30)
                }
             
            }.frame(maxWidth: .infinity)
            
        }
        
        .background(
            Color("primary")
        )
        .scrollIndicators(.hidden)
        .navigationBarBackButtonHidden(true)
    }
    
    private func getStartedContent() -> some View {
        VStack(spacing:20){
            Group{
                Text("Hi Afsar, Welcome to Silent Moon")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                
                Text("Explore the app, Find some peace of mind to prepare for meditation.")
            }.foregroundStyle(.white)
             .multilineTextAlignment(.center)
        }
        .padding()
    }
    
    
}


#Preview {
    GetStartedView()
}
