//
//  LandmarkDetail.swift
//  SwiftUiStudy
//
//  Created by App005 SYNERGY on 2022/4/13.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark:Landmark
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height:300)
                .ignoresSafeArea()
            CycleImage(image: landmark.image)
                .offset(y:-150)
                .padding(.bottom,-150)
            VStack(alignment:.leading) {
                
            
                
                HStack {
                    Text(landmark.name)
                        .font(.title)
                        .foregroundColor(Color(red: 0.151, green: 0.161, blue: 0.845))
                        .multilineTextAlignment(.center)
                    .font(Font.system(size: 30))
                                        
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer(minLength: 30)
                    Text(landmark.state)
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                
                Text(landmark.description)
            }.padding()
            
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        
        
        
        
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        LandmarkDetail(landmark: modelData.landmarks[0]).environmentObject(modelData)
    }
}
