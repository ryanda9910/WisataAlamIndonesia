//
//  DetailController.swift
//  WisataIndonesia
//
//  Created by NusaFox on 25/05/20.
//  Copyright © 2020 none. All rights reserved.
//

import SwiftUI

struct Detail: View {
    var structdata: StructData
    var body: some View {
        ScrollView{
                HStack(){
                    Squareimage(img: structdata.image)
                }
                HStack() {
                    Text(structdata.place)
                        .font(.system(size: 14, weight: .medium, design: .serif))
                        .italic()
                        .padding(.top,8)
                        .padding(.bottom,10)
                    
                }
                HStack(){
                    Text(structdata.description1)
                        .lineLimit(nil)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 40)
                        .font(.system(size: 14, weight: .light, design: .serif))
                        .lineSpacing(4)
                        .fixedSize(horizontal: false, vertical: true)
                }
                HStack(){
                    Profileimage(image:structdata.image)
                }
                HStack(){
                    Text(structdata.description2)
                        .lineLimit(nil)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 40)
                        .font(.system(size: 14, weight: .light, design: .serif))
                        .lineSpacing(4)
                        .fixedSize(horizontal: false, vertical: true)
                }
    
            
            Spacer()
        }
        .navigationBarTitle(
            Text(structdata.name))
    }
}


struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail(structdata: Datastruct[9])
    }
}
