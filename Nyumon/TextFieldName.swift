//
//  Text1.swift
//  Nyumon
//
//  Created by USER on 2024/07/11.
//

import SwiftUI

struct TextFieldName: View {
    @State var name = ""
    var body: some View {
        VStack {
            TextField("お名前は？", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 250)
            
            if (!name.isEmpty) {
                Text("\(name)さん、こんにちは")
            }
        }
        .padding()
    }
}

#Preview {
    TextFieldName()
}
