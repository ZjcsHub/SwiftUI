//
//  HikeView.swift
//  SwiftUiStudy
//
//  Created by App005 SYNERGY on 2022/4/18.
//

import SwiftUI

extension AnyTransition {
    static var moveAndFade:AnyTransition {
        .asymmetric(insertion: .move(edge: .trailing).combined(with: .opacity), removal: .scale.combined(with: .opacity))
        
    }
}

struct HikeView: View {
    var hike:Hike
    
    @State private var showDetail = false
    
    var body: some View {
        VStack {
            HStack {
                HikeGraph(hike: hike, path: \.elevation)
                    .frame(width: 50, height: 30)

                VStack(alignment: .leading) {
                    Text(hike.name)
                        .font(.headline)
                    Text(hike.distanceText)
                }

                Spacer()

                Button {
                    withAnimation {
                        showDetail.toggle()
                    }
                    
                } label: {
                    Label("Graph", systemImage: "chevron.right.circle")
                        .labelStyle(.iconOnly)
                        .imageScale(.large)
                        .rotationEffect(.degrees(showDetail ? 90 : 0))
//                        .animation(nil, value: showDetail)
                        .scaleEffect(showDetail ? 1.5 : 1)
                        .padding()
//                        .animation(.spring(), value: showDetail)
                }
            }

            if showDetail {
                
                HikeDetail(hike: hike)
                    .transition(.moveAndFade)
            }
            Spacer()
        }
    }
}

struct HikeView_Previews: PreviewProvider {
    static let modelData = ModelData()

    static var previews: some View {
        Group {
            HikeView(hike: modelData.hikes[0])
            HikeView(hike: modelData.hikes[1])
        }
    }
}
