//
//  ContentView.swift
//  finalproject
//
//  Created by Yuna Kim on 12/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab1()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            Tab2()
                .tabItem {
                    Image(systemName: "location.circle")
                    Text("Explore")
                }
            Tab3()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Setting")
                }
        }
    }
}

#Preview {
    ContentView()
}
