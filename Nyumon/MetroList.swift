//
//  ContentView.swift
//  Nyumon
//
//  Created by USER on 2024/07/08.
//

import SwiftUI

let metro = ["銀座線", "丸の内線", "日比谷線", "東西線", "千代田線", "有楽町線", "半蔵門線", "南北線", "副都心線"]
let symbol = ["G", "M", "H", "T", "C", "Y", "Z", "N", "F"]

struct MetroList: View {
    var body: some View {
        List(metro.indices, id: \.self) { item in
            HStack {
                Text(symbol[item])
                Text(metro[item])
            }
        }
    }
}

#Preview {
    MetroList()
}
