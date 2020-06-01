//
//  AboutController.swift
//  WisataIndonesia
//
//  Created by NusaFox on 25/05/20.
//  Copyright © 2020 none. All rights reserved.
//

import SwiftUI

struct About: View {
    let name = "Aldo Ryanda H Siregar"
    let email = "ryandaaldo@gmail.com"
    let page = "About Me"
    var body: some View {
        VStack(alignment: .center) {
            Profileimage(image: Image("profile"))
                .offset(y: -50)
            VStack(alignment: .center){
                Text(name)
                    .font(.system(size: 26, weight: .medium, design: .monospaced))
                    .offset(y: -50)
                Text(email)
                    .font(.system(size: 14, weight: .medium, design: .monospaced))
                    .padding(.all,8)
                    .offset(y: -50)
                    .navigationBarTitle(
                        Text(page))
            }
            
        }
        
    }
    
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        About()
    }
}
