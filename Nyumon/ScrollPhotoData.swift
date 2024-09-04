//
//  ScrollPhotoData.swift
//  Nyumon
//
//  Created by USER on 2024/07/12.
//

import Foundation

struct ScrollPhotoData: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
}

var ScrollPhotoArray = [
    ScrollPhotoData(imageName: "hokkaido", title: "北海道"),
    ScrollPhotoData(imageName: "tokyo", title: "東京"),
    ScrollPhotoData(imageName: "osaka", title: "大阪"),
    ScrollPhotoData(imageName: "hiroshima", title: "広島"),
    ScrollPhotoData(imageName: "fukuoka", title: "福岡"),
]
