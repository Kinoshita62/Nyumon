//
//  BindingCheck.swift
//  Nyumon
//
//  Created by USER on 2024/07/16.
//

import SwiftUI

struct BindingCheck: View {
    @State var isChecked_person1: Bool = false
    @State var isChecked_person2: Bool = false
    
    var body: some View {
        VStack {
            GroupBox {
                Grid(alignment: .leading, horizontalSpacing: 20, verticalSpacing: 10) {
                    GridRow {
                        Text("担当者1").font(.title2)
                        PersonCheckMark(isChecked: $isChecked_person1)
                            .scaleEffect(2)
                            .padding(10)
                    }.frame(width: 120)
                    GridRow {
                        Text("担当者2").font(.title2)
                        PersonCheckMark(isChecked: $isChecked_person2)
                            .scaleEffect(2)
                            .padding(10)
                    }.frame(width: 120)
                }
            }
            
            Group {
                if isChecked_person1 && isChecked_person2 {
                    Text("全員チェック済み").foregroundColor(.blue)
                } else {
                    Text("チェック待ち").foregroundColor(.red)
                }
            }
        }
    }
}

struct PersonCheckMark: View {
    @Binding var isChecked: Bool
    var body: some View {
        Image(systemName: isChecked ? "person.fill.checkmark" : "person")
            .foregroundColor(isChecked ? .blue : .gray)
            .onTapGesture {
                isChecked.toggle()
            }
    }
}

#Preview {
    BindingCheck()
}

