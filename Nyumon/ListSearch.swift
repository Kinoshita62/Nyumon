//
//  ListSearch.swift
//  Nyumon
//
//  Created by USER on 2024/07/08.
//

import SwiftUI

struct ListSearch: View {
    let spots = ["東京都美術館", "国立新美術館", "国立近代美術館", "東京国立博物館", "江戸東京博物館", "国立科学博物館", "新江ノ島水族館", "川崎水族館", "しながわ水族館"]
    @State private var searchText = ""
    
    var body: some View {
        NavigationView{
            List {
                ForEach(searchResults, id: \.self) { name in
                    Text(name)
                }
            }
            .searchable(text: $searchText, prompt: "スポットの検索")
            .keyboardType(/*@START_MENU_TOKEN@*/.default/*@END_MENU_TOKEN@*/)
            .navigationTitle("人気スポット")
        }
        .scrollDismissesKeyboard(.immediately)
    }
    
    var searchResults: [String] {
        if searchText.isEmpty {
            return spots
        } else {
            return spots.filter {$0.contains(searchText)}
        }
    }
}



#Preview {
    ListSearch()
}
