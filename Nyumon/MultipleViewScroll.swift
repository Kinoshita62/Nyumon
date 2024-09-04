//
//  MultipleViewScroll.swift
//  Nyumon
//
//  Created by USER on 2024/07/12.
//

import SwiftUI

struct MultipleViewScroll: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { num in
                    Page(str: String(num))
                        .frame(width: 200, height: 150)
                        .cornerRadius(8)
                }
            }
        }
        .frame(width: 250, height: 500)
        .background(Color.gray.opacity(0.2))
        .border(.gray)
    }
}

struct Page: View {
    let colors: [Color] = [.green, .blue, .pink, .orange, .purple]
    let str: String
    var body: some View {
        ZStack {
            colors.randomElement()
            Text(str)
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    MultipleViewScroll()
}
