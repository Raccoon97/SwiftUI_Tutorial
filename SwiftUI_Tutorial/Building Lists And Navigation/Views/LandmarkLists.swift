//
//  LandmarkLists.swift
//  SwiftUI_Tutorial
//
//  Created by 강태윤 on 2022/12/12.
//

import SwiftUI

struct LandmarkLists: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
        }
        .navigationTitle("Landmarks")
    }
}

struct LandmarkLists_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkLists()
    }
}
