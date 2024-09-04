//
//  TextFieldInt.swift
//  Nyumon
//
//  Created by USER on 2024/07/11.
//

import SwiftUI

struct TextFieldInt: View {
    @FocusState var isImputActive: Bool
    @State var kosu: String = ""
    let tanka: Double = 250
    let tax: Double = 1.1
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("個数:")
                        .padding(.horizontal, 0)
                    TextField("0", text: $kosu)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.numberPad)
                        .frame(width: 100)
                        .focused($isImputActive)
                }
                .font(.title)
                .frame(width: 200)
            
                Group {
                    if kosuCheck(min: 1, max: 10) {
                        Text("\(price())円です。")
                            .font(.title)
                    } else {
                        Text("個数は1〜10個を入れてください")
                            .foregroundColor(.red)
                            .font(.headline)
                    }
                }.frame(width: 300, height: 30)
            }
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        isImputActive = false
                    }
                }
            }
        }.scrollDismissesKeyboard(.immediately)
    }

    
    func kosuCheck(min: Int, max: Int) -> Bool {
        guard let num = Int(kosu) else {
            return false
        }
        return (num >= min && num <= max)
    }
    
    func price() -> Int {
        if let num = Double(kosu) {
            let result = Int(tanka * num * tax)
            return result
        } else {
            return -1
        }
    }
}


#Preview {
    TextFieldInt()
}
