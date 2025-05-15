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
            
            LibraryView().tabItem {
                    Image(systemName: "book.fill")
                    Text("Library")
                }
            
            SearchView().tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
        }
    }
}

#Preview {
    ContentView()
}
