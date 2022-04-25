//
//  HikeBadge.swift
//  SwiftUiStudy
//
//  Created by App005 SYNERGY on 2022/4/22.
//

import SwiftUI

struct HikeBadge: View {
    var name:String
    var body: some View {
        VStack(alignment: .center, spacing: nil) {
            Badge()
                .frame(width: 300, height: 300)
                .scaleEffect(1.0/3.0)
                .frame(width: 100, height: 100)
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name)")
        }
    }
}

struct HikeBadge_Previews: PreviewProvider {
    static var previews: some View {
        HikeBadge(name: "Preview Testing")
    }
}
