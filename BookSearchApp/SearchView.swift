//
//  SearchView.swift
//  BookSearchApp
//
//  Created by A S on 2025/05/16.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    @StateObject private var apiClient = BooksAPIClient()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(apiClient.books?.items ?? [], id: \.id) { item in
                    SearchRowView(item: item)
                }
            }
            .navigationTitle("Search")
            .listStyle(.grouped)
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search")
        .onChange(of: searchText) {
            apiClient.fetchBooks(queryString: searchText)
        }
    }
}

#Preview {
    SearchView()
}
