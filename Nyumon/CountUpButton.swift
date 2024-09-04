//
//  Button2.swift
//  Nyumon
//
//  Created by USER on 2024/07/09.
//

import SwiftUI

struct CountUpButton: View {
    @State var num = 0
    
    var body: some View {
        VStack {
            Button(action: {num += 1}) {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.orange.gradient)
                    .frame(width: 200, height: 200)
                    .overlay(Text("カウントUP"))
                        .font(.title2)
                        .foregroundColor(.white)
            }
            Text("\(num)")
                .font(.system(size: 40))
        }
    }
}

#Preview {
    CountUpButton()
}
