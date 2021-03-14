//
//  ContentView.swift
//  swiftui-instagram-clone
//
//  Created by Nicolas Lhomme on 14/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
            HomeView()
                .navigationBarTitle("Instagram", displayMode: .inline)
                .navigationBarItems(leading: Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "camera")}), trailing: Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                                                        Image(systemName: "paperplane")}))
                }.tabItem {
                    Image(systemName: "house.fill")
            }
        }
    }
}

struct HomeView: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 0) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 20) {
                        ForEach(Author.all) { author in
                            VStack {
                                Image(author.photoName)
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    .frame(width: 70)
                                    .overlay(
                                        Circle().stroke(Color.red, style: StrokeStyle(lineWidth: 2))
                                            .frame(width:75, height: 75)
                                    )
                                
                                Text(author.name)
                            }
                        }
                    }.padding(.all, 10)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
