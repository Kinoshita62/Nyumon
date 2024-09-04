//
//  PhotoDetail.swift
//  Nyumon
//
//  Created by USER on 2024/07/08.
//

import SwiftUI

struct PhotoDetail: View {
    var photo: PhotoData
    
    var body: some View {
        VStack {
            Image(photo.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(photo.title)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    PhotoDetail(photo:photoArray[0])
}
