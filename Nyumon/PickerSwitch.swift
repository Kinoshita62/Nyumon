//
//  PickerSwitch.swift
//  Nyumon
//
//  Created by USER on 2024/07/10.
//

import SwiftUI

struct PickerSwitch: View {
    @State private var selectedColor = 0
    let colorViews : [Color] = [.red, .green, .blue]
    let colorNames = ["Red", "Green", "Blue"]
    
    var body: some View {
        VStack {
            Picker(selection: $selectedColor, label: Text("Color")) {
                Text("Red").tag(0)
                Text("Green").tag(1)
                Text("Blue").tag(2)
            }
            .pickerStyle(.segmented)
            .frame(width: 250, height: 30)
            .padding()
            
            let color = colorViews[selectedColor]
            switch color {
            case .red:
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.red)
            case .green:
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.green)
            case .blue:
                Circle()
                    .stroke(lineWidth: 8)
                    .frame(width: 50, height: 50)
                    .foregroundColor(.blue)
            default:
                Text("default")
            }
            Text(colorNames[selectedColor])
        }
    }
}

#Preview {
    PickerSwitch()
}
