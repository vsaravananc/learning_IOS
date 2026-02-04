//
//  home.swift
//  LearningSwiftUI
//
//  Created by Saravanan V on 29/01/26.
//

import SwiftUI



struct HomeView : View {
    @State var searchText : String = ""
    var body : some View {
        ScrollView{
            VStackLayout(
                alignment: .leading,
                spacing:12
            ){
                TitleView
                SearchView
                LHScroll
                headerView(title: "Popular", actionText: "See all")
                locationList
                headerView(title: "Recommended",actionText: "")
                locationList
            }.frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .topLeading)
                .padding(.vertical)

        }
        .scrollIndicators(.hidden)
        .padding(.horizontal,12)
        .navigationBarBackButtonHidden(true)
    }
    
    private  var TitleView : some View {
        VStackLayout(
            alignment: .leading
        ){
            Text("Explore")
                .font(.body)
                .fontWeight(.light)
            Text("Aspen")
                .font(.title)
                .fontWeight(.medium)
                .fontDesign(.rounded)
        }
    }
    
    private var SearchView : some View{
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(Color.black.opacity(0.5))
                .frame(width: 25, height: 25)
                .padding(.leading)
            
            TextField("Find things to do", text: $searchText)
                .foregroundStyle(Color.black.opacity(0.5))
                .fontWeight(.medium)
                .tint(.black)
        }
        .frame(minHeight: 55)
        .background(Color.blue.opacity(0.1))
        .cornerRadius(18)
    }
    
    private var LHScroll : some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 12,content: {
                ButtonView(title: "Location",
                           backGColor: Color.gray.opacity(0.1),
                           fontColor: .blue,
                           fontW: .bold)
                ButtonView(title: "Hotel")
                ButtonView(title: "Food")
                ButtonView(title: "Adventure")
                ButtonView(title: "Musume")
            })
        }.frame(height: 45)
            .scrollIndicators(.hidden)
    }
    
    private func ButtonView(title : String,
                            backGColor: Color = .white,
                            fontColor : Color = .black.opacity(0.4),
                            fontW : Font.Weight = .medium
    ) ->  some View {
        Text("\(title)")
            .foregroundStyle(fontColor)
            .fontWeight(fontW)
            .frame(height: 45)
            .padding(.horizontal)
            .background(backGColor)
            .fontWeight(.medium)
            .cornerRadius(12)
            
            
    }
    
    private func headerView(
        title: String,
        actionText: String
    ) -> some View {
        
        HStack {
            Text(title)
                .font(.title2)
                .fontWeight(.medium)

            Spacer()

            Text(actionText)
                .font(.body)
                .foregroundStyle(Color.blue)
                .fontWeight(.medium)
        }
        .padding(.top)
    }

    
    
    private var locationList : some View {
        ScrollView(.horizontal){
            LazyHStack(spacing:12,content: {
                locationView(
                    text: "Alley Palace"
                )
                locationView(
                    text:"Coeurdes Alpes"
                )
            })
            
        }.frame(height: 260)
            .scrollIndicators(.hidden)
    }
    
    
    
    private func locationView(image:String = "locations", text: String) -> some View {
        NavigationLink {
            DetailView()
        } label: {
            ZStack(alignment: .bottomLeading){
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200,height: 260)
                    .cornerRadius(26)
                
                Text(text).padding(.all,4)
                    .background(Color.black.opacity(0.8))
                    .foregroundStyle(Color.white)
                    .cornerRadius(10)
                    .font(.footnote)
                    .fontDesign(.default)
                    .offset(x:10,y: -50)
                
                Text("⭐️ 4.6").padding(.all,4)
                    .background(Color.black.opacity(0.8))
                    .foregroundStyle(Color.white)
                    .cornerRadius(10)
                    .font(.caption2)
                    .fontDesign(.default)
                    .offset(x:10,y: -25)
                
                Image(systemName: "heart.fill")
                    .font(.headline)
                    .foregroundStyle(Color.red)
                    .padding(.all,4)
                    .background(Color.white)
                    .cornerRadius(20)
                    .offset(x: 155,y: -30)
            }
        }

    }
}


#Preview {
    HomeView()
}
