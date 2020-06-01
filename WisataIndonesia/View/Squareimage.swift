//
//  Squareimage.swift
//  WisataIndonesia
//
//  Created by NusaFox on 25/05/20.
//  Copyright © 2020 none. All rights reserved.
//

import SwiftUI

struct Squareimage: View {
    var img: Image
    
    var body: some View {
        img
            .frame(width: 350, height: 200)
            .padding(.top,22)
            .padding(.bottom,20)
        
    }
}


struct Squareimage_Previews: PreviewProvider {
    static var previews: some View {
        Squareimage(img:Image("danautoba"))
    }
}
