//
//  WebList.swift
//  Nyumon
//
//  Created by USER on 2024/07/09.
//

import SwiftUI

struct WebList: View {
    
    struct WebData: Identifiable{
        var id = UUID()
        var name: String
        var url: String
        var prefectures: String
    }
    
    let webList = [
        WebData(name: "北海道", url: "https://www.pref.hokkaido.lg.jp/",
                prefectures: "hokkaido"),
        WebData(name: "東京", url: "https://www.metro.tokyo.lg.jp/",
                prefectures: "tokyo"),
        WebData(name: "大阪", url: "https://www.pref.osaka.lg.jp/index.html",
                prefectures: "osaka")
    ]
    
    var body: some View {
        NavigationView {
            List(webList) { item in
                HStack {
                    Image(item.prefectures)
                        .resizable()
                        .frame(width: 50, height: 50)
                    if let url = URL(string: item.url), UIApplication.shared.canOpenURL(url) {
                        Link(item.name, destination: url)
                    } else {
                        Text(item.name).foregroundColor(.gray) + Text("URLエラー").foregroundColor(.red).italic()
                    }
                }
            }.navigationTitle("Webリスト")
        }
    }
}

#Preview {
    WebList()
}
