//
//  ScrollGrid.swift
//  Nyumon
//
//  Created by USER on 2024/07/12.
//

import SwiftUI

struct ScrollGrid: View {
    let grids = Array(repeating: GridItem(.fixed(80)), count: 4)
    var body: some View {
        ScrollView {
            LazyVGrid(columns: grids) {
                ForEach((1...100), id: \.self) { num in
                    Pages(str: String(num))
                        .cornerRadius(8)
                        .frame(height: 60)
                }
            }
        }
    }
}

struct Pages: View {
    let colors: [Color] = [.green, .blue, .pink, .orange, .purple]
    let str: String
    var body: some View {
        ZStack {
            colors.randomElement()
            Text(str)
                .font(.title)
                .foregroundColor(.white)
        }
    }
}


#Preview {
    ScrollGrid()
}
