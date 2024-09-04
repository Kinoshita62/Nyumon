//
//  ButtonToggleSwitch.swift
//  Nyumon
//
//  Created by USER on 2024/07/09.
//

import SwiftUI

struct ButtonToggleSwitch: View {
    @State var isShow = true
    var body: some View {
        VStack(alignment: .leading,spacing: 20) {
            Toggle(isOn: $isShow) {
                Label(isShow ? "見る" : "見ない",
                      systemImage: isShow ? "eye" : "eye.slash.fill")
            }
            .toggleStyle(.button)
            .buttonStyle(.bordered)
            
            Image("shizimi")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
                .cornerRadius(20)
                .opacity(isShow ? 1.0 : 0.0)
                .animation(.easeInOut(duration: 3.0), value: isShow)
        }
    }
}

#Preview {
    ButtonToggleSwitch()
}
