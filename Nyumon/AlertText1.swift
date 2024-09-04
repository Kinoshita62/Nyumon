//
//  AlertText.swift
//  Nyumon
//
//  Created by USER on 2024/07/11.
//

import SwiftUI

struct AlertText1: View {
    @State var isError: Bool = false
    var body: some View {
        Button("Alertテスト") {
            isError = true
        }
        .alert(isPresented: $isError) {
            Alert(title: Text("タイトル"), message: Text("メッセージ文"), dismissButton: .default(Text("OK"), action: {}))
        }
    }
}

#Preview {
    AlertText1()
}
