//
//  ListImage.swift
//  WisataIndonesia
//
//  Created by NusaFox on 25/05/20.
//  Copyright © 2020 none. All rights reserved.
//

import SwiftUI

struct ListImage: View {
    @State private var searchText : String = ""
    var body: some View {
        NavigationView {
            VStack {List(Datastruct) {structdata in
                NavigationLink(destination: Detail(structdata:structdata)) {
                    Rowlist(list: structdata)
                        .navigationBarTitle("Wisata Alam")
                        .navigationBarItems(trailing:
                            NavigationLink(destination: About()){
                                Iconprofile(icon: Image("profile"))
                             }
                       )
                    }
                }
            }
        }
    }
}




struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 11","iPhone 8"], id: \.self) { deviceName in
            ListImage()
                .previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}




