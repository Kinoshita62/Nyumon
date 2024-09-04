//
//  RandomElement.swift
//  Nyumon
//
//  Created by USER on 2024/07/09.
//

import SwiftUI

struct RandomElement: View {
    let janken = ["グー", "チョキ", "パー"]
    @State var te = ""
    var body: some View {
        VStack {
            Button("じゃんけん"){
                te = janken.randomElement()!
            }
            .font(.title2)
            .tint(.orange)
            .buttonBorderShape(.capsule)
            .buttonStyle(.borderedProminent)
            .padding()
            Text(te).font(.system(size: 30))
        }
    }
}

#Preview {
    RandomElement()
}
