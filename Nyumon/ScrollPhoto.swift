//
//  ScrollPhoto.swift
//  Nyumon
//
//  Created by USER on 2024/07/12.
//

import SwiftUI

struct PhotoView: View {
    var photo: ScrollPhotoData
    var body: some View {
        VStack {
            Image(photo.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(photo.title)
                .bold()
                .padding(.top, 10)
                .padding(.bottom, 20)
        }
        .background(Color(red: 0.3, green: 0.8, blue: 0.5))
        .cornerRadius(8)
    }
}

struct ScrollPhoto: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .center, spacing: 20) {
                ForEach(ScrollPhotoArray) { ScrollPhotoData in
                    PhotoView(photo: ScrollPhotoData)
                }
            }
        }
    }
}

#Preview {
    ScrollPhoto()
}
