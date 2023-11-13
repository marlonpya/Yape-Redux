//
//  Mark.swift
//  Yape Redux
//
//  Created by marlon arteaga on 11/11/23.
//

import Foundation
import MapKit
import _MapKit_SwiftUI

struct Mark {
    let latitude: CLLocationDegrees
    let longitude: CLLocationDegrees
    
}

struct Marker: Identifiable {
    let id = UUID()
    var location: MapMarker
}

extension Mark {
    
    static func map(food: Food) -> Mark {
        let latitudeDouble = Double(food.latitude ?? "0.0")
        let longitudeDouble = Double(food.longitude ?? "0.0")
        
        let latitude: CLLocationDegrees = latitudeDouble ?? 0.0
        let longitude: CLLocationDegrees = longitudeDouble ?? 0.0
        return Mark(latitude: latitude,longitude: longitude)
    }
}
