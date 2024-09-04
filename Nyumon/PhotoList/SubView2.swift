//
//  SubView2.swift
//  Nyumon
//
//  Created by USER on 2024/07/09.
//

import SwiftUI

struct SubView2: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: detailView()) {
                HStack(alignment: .bottom, spacing: 10) {
                    Image("omochi")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100)
                    Text("おもち")
                }
            }.navigationTitle("MyFamily")
        }
    }
}

@ViewBuilder
func detailView() -> some View {
    VStack {
        Text("おもち").font(.title2)
        Image("omochi")
            .resizable()
            .aspectRatio(contentMode: .fit)
        Text("好物はキャベツ")
    }.padding()
}



#Preview {
    detailView()
}

#Preview {
    SubView2()
}
