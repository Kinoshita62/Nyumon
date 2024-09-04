//
//  SidevarList.swift
//  Nyumon
//
//  Created by USER on 2024/07/08.
//

import SwiftUI

struct SidevarList: View {
    let chest = ["猫", "オオカミ", "ライオン"]
    @State var isExpanded: Bool = false
    
    var body: some View {
        List {
            Section(isExpanded: $isExpanded) {
                ForEach(chest, id:\.self) { item in
                        Text(item)
                }
            } header: {
                Text("動物")
                    .font(.largeTitle)
                    .padding(.top)
            }
        }
        .listStyle(.sidebar)
    }
}

#Preview {
    SidevarList()
}
