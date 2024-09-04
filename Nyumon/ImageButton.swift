//
//  Button3.swift
//  Nyumon
//
//  Created by USER on 2024/07/09.
//

import SwiftUI

struct ImageButton: View {
    @State var isDay = true
    var body: some View {
        VStack {
            Button(
                action: {isDay.toggle()},
                label: {
                    Image("omochi")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 100)
                        .clipped()
                        .cornerRadius(10)
                        .shadow(radius: 10)
                        .overlay(Text("Hello").font(.title2))
                        .foregroundColor(.white)
                }
            )
        }
        Text(isDay ? "こんにちは" : "こんばんは").padding()
    }
}

#Preview {
    ImageButton()
}
