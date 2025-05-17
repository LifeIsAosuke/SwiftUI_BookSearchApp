//
//  ContentView.swift
//  BookSearchApp
//
//  Created by A S on 2025/05/16.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView {
            LibraryView().tabItem { Label(
                title: { Text("Library") },
                icon: { Image(systemName: "book.fill") }
            ) }
            
            SearchView().tabItem { Label(
                title: { Text("Search") },
                icon: { Image(systemName: "magnifyingglass") }
            ) }
            
        }
    }
}


#Preview {
    ContentView()
}
