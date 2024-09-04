//
//  RowView.swift
//  Nyumon
//
//  Created by USER on 2024/07/08.
//

import SwiftUI

struct RowView: View {
    var photo: PhotoData
    
    var body: some View {
        HStack {
            Image(photo.imageName)
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray))
            Text(photo.title)
            Spacer()
        }
    }
}

#Preview {
    RowView(photo:photoArray[0])
}
