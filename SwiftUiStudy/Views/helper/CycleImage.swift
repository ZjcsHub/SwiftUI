//
//  CycleImage.swift
//  SwiftUiStudy
//
//  Created by App005 SYNERGY on 2022/4/13.
//

import SwiftUI

struct CycleImage: View {
    var image: Image
    
    var body: some View {
//
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .cornerRadius(10)
//            .shadow(radius: 7)
//            .overlay {
//
//                RoundedRectangle(cornerRadius: 10, style: .circular).stroke(.white, lineWidth: 4)
//
//
//            }
//            .padding()
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
            
    }
}

struct CycleImage_Previews: PreviewProvider {
    static var previews: some View {
        CycleImage(image:Image("daka"))
    }
}
