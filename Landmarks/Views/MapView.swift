//
//  MapView.swift
//  Landmarks
//
//  Created by 松尾祥汰 on 2021/05/09.
//

import SwiftUI
import MapKit

struct MapView: View {
    let coordinates: Coordinate
    @State private var region = MKCoordinateRegion()

    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                region = MKCoordinateRegion(
                    center: CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude),
                    span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                )
            }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinates: Coordinate(longitude: -116.166868, latitude: 34.011286))
    }
}
