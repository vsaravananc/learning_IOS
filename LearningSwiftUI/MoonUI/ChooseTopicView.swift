//
//  ChooseTopicView.swift
//  LearningSwiftUI
//
//  Created by Saravanan V on 09/02/26.
//

import SwiftUI

struct ChooseTopicView : View {
    
    @State var selectedTopic = 0
    @State var isPresentedSheet : Bool = false
    @State var showAlert : Bool = false
    @State var fileImpoter : Bool = false
    @State var text : String = ""
    @State var animate: Bool = false
    
    var body : some View {
        VStack{
            
            Button {
               isPresentedSheet = true
            } label: {
                Text("OpenSheet")
            }.sheet(isPresented: $isPresentedSheet) {
                VStack{
                    Text("Hello world!")
                    TextField(text: $text) {
                        Text("Enter Text")
                    }
                    TextField(text: $text) {
                        Text("Enter Text")
                    }
                    TextField(text: $text) {
                        Text("Enter Text")
                    }
                }.presentationDetents([.medium])
                .presentationCornerRadius(40)
                .presentationBackground(.cyan)
            }
            
            Button {
                showAlert = true
            } label: {
                Text("OpenAlert")
            }
            .alert(Text("Alert Message"), isPresented: $showAlert) {
                Text("Close IT")
                Text("Cancel IT")
            } message: {
                Text("Happy to have you message")
            }
            
            Button {
                fileImpoter = true
            } label: {
                Text("fileImpotar")
            }
            .fileImporter(isPresented: $fileImpoter, allowedContentTypes: [.image]) { result in
                print(result)
            }
            
            Button {
                
                animate.toggle();
            
            } label: {
                Text("Animation")
            }
            
            
            RoundedRectangle(cornerRadius: animate ? 100 : 0)
                .fill(Color.blue)
                .frame(
                    width: animate ? 100 : 200,
                    height: animate ? 100 : 200
                )
                .animation(.default, value: animate)


        }
    }
    
    private func headerStack() -> some View {
        ZStack(alignment:.topLeading){
            
            Image("cloud")
                .resizable()
                .scaledToFill()
            
            
            VStack(alignment:.leading,spacing:8){
                getTopics()
                Text("choose a topic to focuse on:")
                    .foregroundStyle(.gray)
            }.frame(maxWidth:.infinity, alignment:.leading,)
                .padding(.horizontal)
            
            
        }
    }
    
    private func getTopics() -> some View {
        VStack{
            Group{
                Text("What Brings you \nto Silent Moon?")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                
            }
        }
        
    }
    
}

#Preview {
    ChooseTopicView()
}
