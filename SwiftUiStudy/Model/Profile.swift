//
//  Profile.swift
//  SwiftUiStudy
//
//  Created by App005 SYNERGY on 2022/4/22.
//

import Foundation

struct Profile {
    var username:String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    
    static let `defalut` = Profile(username: "g_kumar")
    
    enum Season:String,CaseIterable,Identifiable {
        case spring = "🌹"
        case summer = "🔥"
        case autumn = "🍂"
        case winter = "❄️"
        
        var id:String { rawValue }
    }
    
}
