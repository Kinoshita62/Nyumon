//
//  ScrollGridFlexible.swift
//  Nyumon
//
//  Created by USER on 2024/07/12.
//

import SwiftUI

struct ScrollGridAdaptive: View {
    let grids = [GridItem(.adaptive(minimum: 80, maximum: .infinity))]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: grids, alignment: .leading, spacing: 10) {
                ForEach(1...100, id: \.self) { num in
                    Ball(str: String(num))
                        .frame(width: 50, height: 50)
                }
                .padding()
            }
        }
    }
}

struct Ball: View {
    let str: String
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.red)
            Text(str)
                .font(.title)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    ScrollGridAdaptive()
}
