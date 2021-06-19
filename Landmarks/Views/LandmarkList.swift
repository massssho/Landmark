//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 松尾祥汰 on 2021/05/16.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(
                    destination: LandmarkDetail(landmark: Landmark(id: 1001, name: "Turtle Rock", category: "Rivers", city: "Twentynine Palms", state: "California", isFeatured: true, isFavorite: true,coordinates: Coordinate(longitude: -116.166868, latitude: 34.011286), park: "Joshua Tree National Park", description: "", imageName: "turtlerock")),
                    label: {
                        LandmarkRow(landmark: Landmark(id: 1001, name: "Turtle Rock", category: "Rivers", city: "Twentynine Palms", state: "California", isFeatured: true, isFavorite: true,coordinates: Coordinate(longitude: -116.166868, latitude: 34.011286), park: "Joshua Tree National Park", description: "", imageName: "turtlerock"))
                    })
                
                NavigationLink(
                    destination: LandmarkDetail(landmark: Landmark(id: 1001, name: "Turtle Rock", category: "Rivers", city: "Twentynine Palms", state: "California", isFeatured: true, isFavorite: true,coordinates: Coordinate(longitude: -116.166868, latitude: 34.011286), park: "Joshua Tree National Park", description: "", imageName: "turtlerock")),
                    label: {
                        LandmarkRow(landmark: Landmark(id: 1001, name: "Turtle Rock", category: "Rivers", city: "Twentynine Palms", state: "California", isFeatured: true, isFavorite: true,coordinates: Coordinate(longitude: -116.166868, latitude: 34.011286), park: "Joshua Tree National Park", description: "", imageName: "turtlerock"))
                    })
                
                NavigationLink(
                    destination: LandmarkDetail(landmark: Landmark(id: 1001, name: "Turtle Rock", category: "Rivers", city: "Twentynine Palms", state: "California", isFeatured: true, isFavorite: true,coordinates: Coordinate(longitude: -116.166868, latitude: 34.011286), park: "Joshua Tree National Park", description: "", imageName: "turtlerock")),
                    label: {
                        LandmarkRow(landmark: Landmark(id: 1001, name: "Turtle Rock", category: "Rivers", city: "Twentynine Palms", state: "California", isFeatured: true, isFavorite: true,coordinates: Coordinate(longitude: -116.166868, latitude: 34.011286), park: "Joshua Tree National Park", description: "", imageName: "turtlerock"))
                    })
                
            }
            .navigationTitle("Landmarks")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
