//
//  ObservedTime.swift
//  Nyumon
//
//  Created by USER on 2024/07/16.
//

import SwiftUI

struct ObservedTime: View {
    @ObservedObject var maker = ValueMaker()
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("\(maker.value2)")
                .font(.largeTitle)
                .foregroundColor((maker.value2 > 0.8) ? .white : .gray)
                .background((maker.value2 > 0.8) ? Color.red : Color.white)
            
            ZStack {
                Rectangle().stroke(.gray)
                Rectangle()
                    .foregroundColor(.green)
                    .scaleEffect(x: maker.value2, y: 1.0, anchor: .leading)
            }
        }
        .frame(width: 200, height: 80)
        .onAppear(perform: {
            maker.start()
        })
    }
}

#Preview {
    ObservedTime()
}
