//
//  ListSwipe.swift
//  Nyumon
//
//  Created by USER on 2024/07/16.
//

import SwiftUI

struct ListSwipe: View {
    @ObservedObject var books = Books()
    var body: some View {
        NavigationView {
            List(books.booksData) { item in
                ForEach(books.booksData) { item in
                    BookView(item)
                        .swipeActions(edge: .leading) {
                            Button {
                                books.toggleIsRead(item)
                            } label: {
                            if item.isRead {
                                Label("未読にする", systemImage: "book.closed")
                            } else {
                                Label("既読にする", systemImage: "book.fill")
                            }
                        }.tint(.blue)
                    }
                    .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                        Button(role: .destructive) {
                            withAnimation(.linear(duration: 0.4)) {
                                books.removeBook(item)}
                        } label: {
                            Label("削除", systemImage: "trash")
                        }
                        Button {
                            books.toggleIsFlag(item)
                        } label: {
                            if item.isFlag {
                                Label("フラグを外す", systemImage: "flag.slash")
                            } else {
                                Label("フラグ", systemImage: "flag")
                            }
                        }.tint(item.isFlag ? .gray : .blue)
                    }
                }
                .onMove { indexSet, index in
                    books.booksData.move(fromOffsets: indexSet, toOffset: index)}
                .onDelete { indexSet in
                    books.booksData.remove(at: indexSet.first!)
                }
            }
            .navigationBarTitle(Text("図書リスト"))
            .listStyle(.plain)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
            }
        }
    }
}

@ViewBuilder
func BookView(_ item: Book) -> some View {
    HStack(alignment: .top) {
        VStack(alignment: .leading) {
            Text(item.bookTitle).bold()
            Text(item.bookAuthor)
        }
        if item.isFlag {
            Spacer()
            Image(systemName: "flag")
                .tint(.black)
        }
    }
    .foregroundColor(item.isRead ? .gray : .black)
    .frame(height: 80)
}

#Preview {
    ListSwipe()
}
