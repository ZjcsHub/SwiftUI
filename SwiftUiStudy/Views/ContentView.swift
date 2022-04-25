//
//  ContentView.swift
//  SwiftUiStudy
//
//  Created by App005 SYNERGY on 2022/4/13.
//

import SwiftUI

struct ContentView: View {
    enum Tab {
        case featured
        case list
        case swiftui
    }
    
    @EnvironmentObject var modelData: ModelData

    @State private var selection:Tab = .list
    
    var body: some View {
      
       //LandmarkList()
        
        
        TabView(selection: $selection) {
            LandmarkList()
            .tabItem {
                Label("SwiftUi",systemImage: "star")
            }
            .tag(Tab.list)
            .navigationViewStyle(.columns)
            
            CategoryHome()
                .tabItem({
                    Label("Featured",systemImage: "star")
                })
                .tag(Tab.featured)

        }
        
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environmentObject(ModelData())
            
        }
    }
}
