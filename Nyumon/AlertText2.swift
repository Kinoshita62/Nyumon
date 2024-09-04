//
//  AlertText2.swift
//  Nyumon
//
//  Created by USER on 2024/07/11.
//

import SwiftUI

struct AlertText2: View {
    @State var isError: Bool = false
    var body: some View {
        Button("Alertテスト") {
            isError = true
        }
        .alert(isPresented: $isError) {
            Alert(
                title: Text("タイトル"),
                message: Text("メッセージ"),
                primaryButton: .default(Text("OK"), action: {okAction()}),
                secondaryButton: .cancel(Text("キャンセル"), action: {cancelAction()})
            )}
    }
}

func okAction() {
    print("OK")
}

func cancelAction() {
    print("キャンセル")
}

#Preview {
    AlertText2()
}
