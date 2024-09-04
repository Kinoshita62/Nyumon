//
//  PickerMenu.swift
//  Nyumon
//
//  Created by USER on 2024/07/10.
//

import SwiftUI

struct PickerMenu: View {
    @State var vehicle = 0
    let names = ["bicycle", "car", "tram"]
    var body: some View {
        List {
            Picker(selection: $vehicle, label: Text("乗り物")) {
                Text("自転車").tag(0)
                Text("車").tag(1)
                Text("電車").tag(2)
            }
            
            Image(systemName: names[vehicle])
                .resizable()
                .frame(width: 50, height: 50)
        }
        
        List {
            Picker(selection: $vehicle, label: Text("乗り物")) {
                Text("自転車").tag(0)
                Text("車").tag(1)
                Text("電車").tag(2)
            }
            
            Image(systemName: names[vehicle])
                .resizable()
                .frame(width: 50, height: 50)
        }
        .pickerStyle(.segmented)
        
        List {
            Picker(selection: $vehicle, label: Text("乗り物")) {
                Text("自転車").tag(0)
                Text("車").tag(1)
                Text("電車").tag(2)
            }
            
            Image(systemName: names[vehicle])
                .resizable()
                .frame(width: 50, height: 50)
        }
        .pickerStyle(.inline)
    }
}

#Preview {
    PickerMenu()
}
