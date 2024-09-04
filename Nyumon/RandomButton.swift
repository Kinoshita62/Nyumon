//
//  RandomButton.swift
//  Nyumon
//
//  Created by USER on 2024/07/09.
//

import SwiftUI


struct RandomButton: View {
    @State var num = 0
    var body: some View {
        VStack {
            Button("乱数ボタン") {
                num = Int.random(in: 0...100)
            }
            .buttonStyle(.bordered)
            .tint(.pink)
            .buttonBorderShape(.capsule)
            Text("\(num)")
                .font(.largeTitle)
                .padding()
        }
    }
}

#Preview {
    RandomButton()
}
