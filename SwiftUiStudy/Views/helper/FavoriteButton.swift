//
//  FavoriteButton.swift
//  SwiftUiStudy
//
//  Created by App005 SYNERGY on 2022/4/14.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? .yellow : .gray)
                .labelStyle(.iconOnly)
        }

    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
