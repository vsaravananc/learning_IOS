//
//  TodoViewHome.swift
//  LearningSwiftUI
//
//  Created by Saravanan V on 14/02/26.
//

import SwiftUI

struct TodoViewHome : View {
    @State var todos: [Todo] = [
        Todo(message: "Welcome")
    ]
    
    @State var showSheet : Bool = false
    @State var newTodoMessage : String = ""
    var body: some View {
        
        NavigationView {
            List {
                ForEach(todos, id: \.message) { todo in
                    Text(todo.message)
                }
            }.toolbar{
                ToolbarItem(placement: .principal) {
                    Text("Todo")
                        .font(.title)
                        .fontWeight(.semibold)
                        .fontDesign(.rounded)
                        
                }
                
                ToolbarItem(placement: .bottomBar) {
                    HStack{
                        Button(action: {
                            showSheet = true;
                        }, label: {
                            Image(systemName: "plus")
                                .padding()
                                .font(.headline)
                                .foregroundStyle(.white)
                                .background(Color.blue)
                                .clipShape(.circle)
                        })
                        .sheet(isPresented: $showSheet) {
                            NavigationView(content: {
                                VStack(alignment:.center,spacing: 8){
                                    
                                    Text( "Add Todo")
                                        .font(.headline)
                                  
                                    TextField(text: $newTodoMessage) {
                                        Text("Enter Todo")
                                    }
                                    
                                    
                                }.frame(minHeight: 350,alignment: .topLeading)
                                    .padding(.horizontal)
                                .toolbar(content: {
                                    ToolbarItem(placement: .topBarLeading, content: {
                                        Button(action: {
                                            
                                        }, label: {
                                            Text("Cancel")
                                        })
                                    })
                                    
                                    ToolbarItem(placement: .topBarTrailing, content: {
                                        Button(action: {
                                            
                                        }, label: {
                                            Text("Done")
                                        })
                                    })
                                })
                            })
                           
                            
                            .presentationDetents([.medium])
                            .presentationCornerRadius(30)
                            
                            .interactiveDismissDisabled(true)
                        }
                        
                        
                    }.frame(maxWidth: .infinity,alignment: .trailing)
                }
            }
        }
    }
}

#Preview {
    TodoViewHome()
}
