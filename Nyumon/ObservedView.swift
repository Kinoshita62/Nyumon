//
//  ObservedView.swift
//  Nyumon
//
//  Created by USER on 2024/07/16.
//

import SwiftUI

class User2: ObservableObject {
    @Published var name = ""
    @Published var tall = ""
}

func fitSize(tall: String) -> String {
    guard let height = Double(tall) else {
        return "???"
    }
    switch height {
    case 145..<155:
        return "Sサイズです"
    case 155..<176:
        return "Mサイズです"
    case 176..<185:
        return "Lサイズです"
    default:
        return "適したサイズがありません"
    }
}

struct ObservedView: View {
    @ObservedObject var user = User2()
    
    var body: some View {
        VStack(alignment: .leading, spacing:15) {
            Group {
                TextField("名前", text: $user.name)
                TextField("身長", text:$user.tall)
                    .keyboardType(.numberPad)
            }.textFieldStyle(RoundedBorderTextFieldStyle())
                             
            if !(user.name).isEmpty && !(user.tall).isEmpty {
                Text("\(user.name)さんは\(fitSize(tall: user.tall))")
            }
        }.frame(width: 250)
    }
}

#Preview {
    ObservedView()
}
