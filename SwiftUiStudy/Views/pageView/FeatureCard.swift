//
//  FeatureCard.swift
//  SwiftUiStudy
//
//  Created by App005 SYNERGY on 2022/4/22.
//

import SwiftUI

struct FeatureCard: View {
    var landmark:Landmark
    
    var body: some View {
        landmark.featureImage?.resizable()
            .aspectRatio(3/2, contentMode: .fit)
            .overlay {
                TextOverlay(landmark: landmark)
                
            }
    }
}

struct TextOverlay:View {
    
    var landmark:Landmark
    
    var gradient:LinearGradient {
        .linearGradient(colors: [.black.opacity(0.6),.black.opacity(0)], startPoint: .bottom, endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .bold()
                    
                Text(landmark.park)
            }
            .foregroundColor(.white)
            .padding()
        }
    }
    
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(landmark: ModelData().features[0])
    }
}
