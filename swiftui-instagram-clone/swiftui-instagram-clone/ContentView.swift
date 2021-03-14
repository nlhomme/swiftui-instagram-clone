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
                }
            }
        }
    }
}

struct HomeView: View {
    var body: some View {
        Text("Coucou")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
