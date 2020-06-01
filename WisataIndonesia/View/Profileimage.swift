//
//  Profileimage.swift
//  WisataIndonesia
//
//  Created by NusaFox on 25/05/20.
//  Copyright © 2020 none. All rights reserved.
//

import SwiftUI

struct Profileimage: View {
   var image: Image
        
        var body: some View {
            image
                .resizable()
                .frame(width:300, height: 350)
                .background(Color.black)
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .shadow(radius: 10)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.2))
        }
    }

struct Profileimage_Previews: PreviewProvider {
    static var previews: some View {
        Profileimage(image: Image ("profile"))
    }
}
