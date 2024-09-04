//
//  AlertTxet3.swift
//  Nyumon
//
//  Created by USER on 2024/07/11.
//

import SwiftUI

struct AlertText3: View {
    @State var isError: Bool = false
    var body: some View {
        Button("Alertテスト") {
            isError = true
        }
        .alert(isPresented: $isError) {
            Alert(
                title: Text("タイトル"),
                message: Text("メッセージ"),
                primaryButton: .destructive(Text("削除する"), action: {}),
                secondaryButton: .cancel(Text("キャンセル"), action: {})
                )
        }
    }
}

#Preview {
    AlertText3()
}
