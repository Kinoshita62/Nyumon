//
//  ConfirmationButton.swift
//  Nyumon
//
//  Created by USER on 2024/07/12.
//

import SwiftUI

struct ConfirmationButton: View {
    @State var isShowingDialog = false
    var body: some View {
        Button(action: {
            isShowingDialog = true
        }) {
            Label("削除ボタン", systemImage: "trash")
        }.confirmationDialog("注意！", isPresented: $isShowingDialog, titleVisibility: .visible, actions: {
            Button("削除する", role: .destructive) {
                destructiveAction()
            }
            Button("キャンセル", role: .cancel) {
                cancelAction()
            }
        }, message: {
            Text("削除すると戻せません")
        })
    }
    
    
    func destructiveAction() {
        print("削除が選ばれた")
    }
    
    func cancelAction() {
        print("キャンセルが選ばれた")
    }
}

#Preview {
    ConfirmationButton()
}
