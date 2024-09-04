//
//  EnvironmentShare.swift
//  Nyumon
//
//  Created by USER on 2024/07/16.
//

import SwiftUI

struct EnvironmentShare: View {
    @EnvironmentObject var setData2: EnvironmentShareData
    @State var isShow: Bool = false
    
    var body: some View {
        VStack {
            GroupBox(label: Label("設定", systemImage: "gearshape")) {
                Text("\(setData2.isOn ? "ON" : "OFF")")
                if setData2.isOn {
                    Text(String(repeating: "★", count: setData2.num))
                }
            }.frame(width: 300)
            
            Button(action: {
                isShow = true
            }) {
                Label("設定を変える", systemImage: "ellipsis.circle")
            }
            .padding()
            .sheet(isPresented: $isShow) {
                EnvironmentShareSetting(isPresented: $isShow)
            }
        }
    }
}

#Preview {
    EnvironmentShare()
        .environmentObject(EnvironmentShareData())
}

