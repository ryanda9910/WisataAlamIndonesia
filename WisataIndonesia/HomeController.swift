//
//  HomeController.swift
//  WisataIndonesia
//
//  Created by NusaFox on 25/05/20.
//  Copyright © 2020 none. All rights reserved.
//

import SwiftUI

struct HomeController: View {
    var body: some View {
        NavigationView{
            VStack{
                List(datastruct){ structdata in
                    NavigationLink(destination: DetailController(structdata:structdata)){
                        .navigationBarTitle("Wisata Alam")
                            .navigationBarItems(trailing:
                                NavigationLink(destination: AboutController()){
                                    Iconprofile(icon: Image("profile"))
                                    
                            }
                        )
                    }
                }
            }
        }
    }
}

struct HomeController_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 11 pro","iPhone 8"], id: \.self) { deviceName in
            HomeController()
                .previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}
