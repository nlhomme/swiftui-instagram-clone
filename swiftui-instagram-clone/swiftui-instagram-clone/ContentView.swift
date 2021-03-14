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
                            AuthorStoryView(author: author)
                        }
                    }.padding(.all, 10)
                }
                Divider()
                
                ForEach(Post.all) { post in
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            AuthorStoryView(author: post.author, width: 40, showText: false)
                            VStack(alignment: .leading) {
                                Text(post.author.name)
                                    .font(.headline)
                                Text("Paris")
                            }
                            
                            Spacer()
                            Image(systemName: "ellipsis")
                        }.padding(.all, 10)
                        
                        Divider()
                        Image(post.imageName)
                            .resizable()
                            .scaledToFit()
                    }
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

struct AuthorStoryView: View {
    let author: Author
    var width: CGFloat = 70
    var showText = true
    var body: some View {
        VStack {
            Image(author.photoName)
                .resizable()
                .scaledToFit()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(width: width)
                .overlay(
                    Circle().stroke(Color.red, style: StrokeStyle(lineWidth: 2))
                        .frame(width: width + 5, height: width + 5)
                )
            if showText {
                Text(author.name)
            }
        }
    }
}
