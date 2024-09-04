//
//  SubView.swift
//  Nyumon
//
//  Created by USER on 2024/07/09.
//

import SwiftUI

struct SubView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: Sub()){
                Label("Goサブ", systemImage: "message")
            }
            .navigationTitle("Home")
        }.navigationViewStyle(.stack)
    }
}

struct Sub: View {
    var body: some View {
        Text("サブ").font(.largeTitle)
    }
}

#Preview {
    SubView()
}
