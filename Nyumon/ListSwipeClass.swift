//
//  ListSwipeClass.swift
//  Nyumon
//
//  Created by USER on 2024/07/16.
//

import Foundation
struct Book: Identifiable, Equatable {
    var id = UUID()
    var bookTitle: String
    var bookAuthor: String
    var isRead = false
    var isFlag = false
}

class Books: ObservableObject {
    @Published var booksData = [
        Book(bookTitle: "風の又三郎", bookAuthor: "宮沢賢治"),
        Book(bookTitle: "人間失格", bookAuthor: "太宰治"),
        Book(bookTitle: "坊ちゃん", bookAuthor: "夏目漱石"),
        Book(bookTitle: "遠野物語", bookAuthor: "柳田国男"),
        Book(bookTitle: "生まれいずる悩み", bookAuthor: "有島武郎"),
        Book(bookTitle: "舞姫", bookAuthor: "森鴎外"),
        Book(bookTitle: "人間椅子", bookAuthor: "江戸川乱歩"),
        Book(bookTitle: "人間レコード", bookAuthor: "夢野久作"),
        Book(bookTitle: "山月記", bookAuthor: "中島敦")
    ]
    
    func toggleIsRead(_ item: Book) {
        guard let index = booksData.firstIndex(of: item) else { return }
        booksData[index].isRead.toggle()
    }
    
    func toggleIsFlag(_ item: Book) {
        guard let index = booksData.firstIndex(of: item) else { return }
        booksData[index].isFlag.toggle()
    }

    func removeBook(_ item: Book) {
        guard let index = booksData.firstIndex(of: item) else { return }
        booksData.remove(at: index)
    }
}

