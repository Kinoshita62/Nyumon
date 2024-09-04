//
//  ToggleSwitch.swift
//  Nyumon
//
//  Created by USER on 2024/07/09.
//

import SwiftUI

struct ToggleSwitch: View {
    @State var isLike = true
    var body: some View {
        VStack{
            Toggle(isOn: $isLike) {
                Text("Like or Not")
                    .font(.largeTitle)
            }
            .tint(.red)
        }
        .fixedSize()
        .padding()
        
        if isLike {
            Image(systemName: "heart.fill")
                .symbolRenderingMode(.multicolor)
                .font(.system(size: 80))
        } else {
            Image(systemName: "heart.slash")
                .symbolRenderingMode(.hierarchical)
                .font(.system(size: 80))
        }
    }
}

#Preview {
    ToggleSwitch()
}
