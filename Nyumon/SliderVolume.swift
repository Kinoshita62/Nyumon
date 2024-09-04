//
//  SliderVolume.swift
//  Nyumon
//
//  Created by USER on 2024/07/10.
//

import SwiftUI

struct SliderVolume: View {
    @State var volume: Double = 0.0
    var body: some View {
        VStack(spacing: 50) {
            GroupBox{
                Slider(value: $volume)
                Text("\(format(volume))").font(.largeTitle)
            }
            .frame(width: 300)
            Image(systemName: "speaker.wave.3", variableValue: volume)
                .resizable()
                .frame(width: 100, height: 100)
        }
    }
}

func format(_ num:Double) -> String {
    let result = String(round(num*100)/100)
    return result
}

#Preview {
    SliderVolume()
}
