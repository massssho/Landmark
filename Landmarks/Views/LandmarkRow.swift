//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by 松尾祥汰 on 2021/05/16.
//

import SwiftUI

struct LandmarkRow: View {
    let landmark: Landmark
    var body: some View {
        HStack {
            Image(landmark.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(
                landmark: Landmark(
                    id: 1001,
                    name: "Turtle Rock",
                    category: "Rivers",
                    city: "Twentynine Palms",
                    state: "California",
                    isFeatured: true,
                    isFavorite: true,
                    coordinates: Coordinate(longitude: -116.166868, latitude: 34.011286),
                    park: "Joshua Tree National Park",
                    description: "",
                    imageName: "turtlerock"
                )
            )
        }
        .previewLayout(.fixed(width: 375, height: 78))
        .preferredColorScheme(.dark)
    }
}
