//
//  BindingClose.swift
//  Nyumon
//
//  Created by USER on 2024/07/16.
//

import SwiftUI

struct BindingClose: View {
    @State var isShow: Bool = false
    var body: some View {
        Button(action: {
            isShow = true
        }) {
            Text("シートを表示")
        }
        .sheet(isPresented: $isShow) {
            SomeClose(isPresented: $isShow)
        }
    }
}

struct SomeClose: View {
    @Binding var isPresented: Bool
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "ladybug").scaleEffect(2.0)
                Text("ハロー").font(.title2).padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.9, green: 0.9, blue: 0.8))
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isPresented = false
                    } label: {
                        Image(systemName: "xmark.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    .tint(.black)
                }
            }
        }
    }
}

#Preview {
    BindingClose()
}

#Preview {
    SomeClose(isPresented: Binding.constant(false))
}
