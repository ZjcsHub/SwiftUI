//
//  ContentView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by App005 SYNERGY on 2022/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            LandmarkList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
