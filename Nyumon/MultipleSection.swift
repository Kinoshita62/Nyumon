//
//  MultipleSection.swift
//  Nyumon
//
//  Created by USER on 2024/07/08.
//

import SwiftUI

struct MultipleSection: View {
    let shikoku = ["徳島県", "香川県", "愛媛県", "高知県"]
    let kyusyu = ["福岡県", "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県", "鹿児島県"]
    
    @State var isExpanded: Bool = false
    
    var body: some View {
        List {
            Section(header: Text("四国").font(.largeTitle).padding(.top), footer: Text("総面積は約18800㎢、総人口は約370万人")) {
                ForEach(shikoku, id:\.self) { item in
                        Text(item)
                }
            }
            Section(header: Text("九州").font(.largeTitle).padding(.top), footer: Text("総面積は約36780㎢、総人口は約1300万人")) {
                ForEach(kyusyu, id:\.self) { item in
                        Text(item)
                }
            }
        }
        .listStyle(.grouped)
    }
}

#Preview {
    MultipleSection()
}
