//
//  BookManager.swift
//  BookSearchApp
//
//  Created by A S on 2025/05/16.
//

import Foundation

class BookManager: ObservableObject {
    @Published var favoriteBooks: [BookSummary] = []
    let dataManager = SwiftDataManager<BookSummary>()
    
    func saveBook(title: String, thumbnail: String?) {
       let newBook = BookSummary(id: UUID().uuidString, title: title, thumbnail: thumbnail)
       dataManager.saveItem(data: newBook)
    }
    
    func fetchAllBooks() {
       let books = dataManager.fetchAll()
       self.favoriteBooks = books
    }
}
