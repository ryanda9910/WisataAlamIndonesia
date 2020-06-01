//
//  Rowlist.swift
//  WisataIndonesia
//
//  Created by NusaFox on 25/05/20.
//  Copyright © 2020 none. All rights reserved.
//

import SwiftUI

struct Rowlist: View {
    var list: StructData
    
    var body: some View {
        HStack {
            list.image
                .resizable()
                .frame(width: 100, height: 80)
            Text(list.name)
            Spacer()
        }
    }
}
struct Rowlist_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            Rowlist(list:Datastruct[3])
            
            Rowlist(list: Datastruct[4])
            
        }
        .previewLayout(.fixed(width: 350, height: 350))
        
    }
}
