//
//  SwiftUiStudyApp.swift
//  SwiftUiStudy
//
//  Created by App005 SYNERGY on 2022/4/13.
//

import SwiftUI

@main
struct SwiftUiStudyApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
#if !os(watchOS)
        .commands {
            LandmarkCommands()
        }
#endif
#if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
#endif
        
#if os(macOS)
Settings {
    LandmarkSettings()
}
#endif
    }
}
