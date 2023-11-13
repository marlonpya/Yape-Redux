//
//  MapView.swift
//  Yape Redux
//
//  Created by marlon arteaga on 11/11/23.
//

import SwiftUI
import MapKit


struct MapView: View {
    let mark: Mark
    
    
    var body: some View {
        
        let markers = [Marker(location: MapMarker(coordinate: CLLocationCoordinate2D(latitude: mark.latitude, longitude: mark.longitude), tint: .red))]
        Map(coordinateRegion: .constant(createRegion()), showsUserLocation: true, annotationItems: markers) { mk in
            mk.location
        }
        .frame(width: 400, height: 300)
    }
}

extension MapView {
    
    func createRegion() -> MKCoordinateRegion {
        let location = CLLocationCoordinate2D(latitude: mark.latitude, longitude: mark.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        return MKCoordinateRegion(center: location, span: span)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(mark: Mark(latitude: 0.0,longitude: 0.0))
    }
}
