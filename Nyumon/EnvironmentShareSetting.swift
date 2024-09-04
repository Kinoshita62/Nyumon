//
//  EnvironmentShareSetting.swift
//  Nyumon
//
//  Created by USER on 2024/07/16.
//

import SwiftUI

struct EnvironmentShareSetting: View {
    @EnvironmentObject var setData2: EnvironmentShareData
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Toggle(isOn: $setData2.isOn) {
                    Text("設定： \(setData2.isOn ? "ON" : "OFF")")
                }.frame(width: 250)
                Stepper(value: $setData2.num, in: 1...5) {
                    Text("★： \(setData2.num)")
                }
                .frame(width: 250)
            }
            .font(.title2)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.9, green: 0.9, blue: 0.5))
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("閉じる") {
                        isPresented = false
                    }
                }
            }
        }
    }
}

#Preview {
    EnvironmentShareSetting(isPresented: Binding.constant(false))
        .environmentObject(EnvironmentShareData())
}
