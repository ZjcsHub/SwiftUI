//
//  Badge.swift
//  SwiftUiStudy
//
//  Created by App005 SYNERGY on 2022/4/14.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols: some View {
        ForEach(0..<10) { index in
                    RotatedBadgeSymbol(
                        angle: .degrees(Double(index) / Double(10)) * 360.0
                    )
                }
                .opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
            }
            .scaledToFit()
        }
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
