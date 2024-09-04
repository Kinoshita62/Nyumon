//
//  PhotoRow.swift
//  Nyumon
//
//  Created by USER on 2024/07/08.
//

import SwiftUI

struct PhotoRow: View {
    var body: some View {
        NavigationView {
            List(photoArray) { item in
                NavigationLink(destination: PhotoDetail(photo: item)) {
                    RowView(photo: item)
                }
            }
            .navigationTitle("My Family")
        }
    }
}

#Preview {
    PhotoRow()
}
