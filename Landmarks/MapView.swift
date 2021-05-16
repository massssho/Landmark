//
//  MapView.swift
//  Landmarks
//
//  Created by 松尾祥汰 on 2021/05/09.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 35.60634793086793, longitude: 139.68482872344842),
        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        )

    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
