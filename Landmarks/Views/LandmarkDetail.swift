//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by 松尾祥汰 on 2021/05/09.
//

import SwiftUI

struct LandmarkDetail: View {
    let landmark: Landmark
    var body: some View {
        VStack {
            MapView(coordinates: Coordinate(longitude: -116.166868, latitude: 34.011286))
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(imageName: "turtlerock")
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack (alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.category)
                    Spacer()
                    Text(landmark.city)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkDetail(
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
                .previewDevice("iPhone 12")
        }
    }
}
