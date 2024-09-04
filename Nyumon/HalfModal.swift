//
//  HalfModal.swift
//  Nyumon
//
//  Created by USER on 2024/07/12.
//

import SwiftUI

struct HalfModal: View {
    @State var isModal: Bool = false
    @State var counter: Int = 0
    
    var body: some View {
        Button("sheetテスト") {
            isModal = true
        }
        .sheet(isPresented: $isModal, onDismiss: {countUp()}) {
            SomeView()
                .presentationDetents([.medium, .height(300)])
                .presentationDragIndicator(.visible)
        }
        .disabled(counter >= 3)
        Text("回数\(counter)")
            .font(.title)
            .padding()
    }
    func countUp() {
        counter += 1
    }
}

struct SomeView: View {
    var body: some View {
        ZStack {
            Color.mint.opacity(0.2).ignoresSafeArea()
            Text("プレゼンテーション")
                .font(.title3).bold()
                .foregroundColor(.white)
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.green).opacity(0.5)
                        .frame(width: 200, height: 200)
                        .rotationEffect(.degrees(45))
                        .shadow(radius: 10)
                )
        }
    }
}



#Preview {
    HalfModal()
}

#Preview {
    SomeView()
}
