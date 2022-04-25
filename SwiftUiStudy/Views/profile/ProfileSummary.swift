//
//  ProfileSummary.swift
//  SwiftUiStudy
//
//  Created by App005 SYNERGY on 2022/4/22.
//

import SwiftUI

struct ProfileSummary: View {
    @EnvironmentObject var modelData: ModelData
   
    var profile:Profile
    
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading, spacing: 10, content: {
                Text(profile.username)
                    .bold()
                    .font(.title)
                
                Text("Notifications:\(profile.prefersNotifications ? "On":"Off")")
                Text("Seasonal Photos:\(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate,style: .date)
                
                Divider()
                VStack(alignment: .leading) {
                    Text("Completed Badget")
                        .font(.headline)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            HikeBadge(name: "First Hike")
                            HikeBadge(name: "Earth Day")
                                .hueRotation(Angle(degrees: 90))
                            HikeBadge(name: "Tenth Hike")
                                .grayscale(0.5)
                                .hueRotation(Angle(degrees: 45))
                        }
                        .padding()
                    }
                }
                Divider()
                VStack(alignment: .leading) {
                    Text("Recent Hikes")
                        .font(.headline)
                    HikeView(hike: modelData.hikes[0])
                }
                
                
            })
        }
        .padding()
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.defalut)
            .environmentObject(ModelData())
    }
}
