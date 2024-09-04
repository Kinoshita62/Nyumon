//
//  PhotoData.swift
//  Nyumon
//
//  Created by USER on 2024/07/08.
//

import Foundation

struct PhotoData: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
}

var photoArray = [
    PhotoData(imageName: "omochi", title: "おもち"),
    PhotoData(imageName: "shizimi", title: "シジミ")
]
