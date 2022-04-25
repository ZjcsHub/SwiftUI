//
//  ContentView.swift
//  MacLandmarks
//
//  Created by App005 SYNERGY on 2022/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            LandmarkList()
                .frame(minWidth: 700, minHeight: 300)
                        
    
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
