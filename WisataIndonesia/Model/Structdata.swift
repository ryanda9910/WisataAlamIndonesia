//
//  Structdata.swift
//  WisataIndonesia
//
//  Created by NusaFox on 25/05/20.
//  Copyright © 2020 none. All rights reserved.
//

import SwiftUI

struct StructData: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    fileprivate var imageName: String
    var state:String
    var place : String
    var description1:String
    var description2:String
    var category: Category

    
enum Category: String, CaseIterable, Codable, Hashable {
        case mountain = "Mountain"
        case lakes = "Lakes"
        case beach = "Beach"
    }
}

extension StructData {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
