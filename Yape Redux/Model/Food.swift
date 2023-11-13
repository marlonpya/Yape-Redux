//
//  Food.swift
//  Yape Redux
//
//  Created by marlon arteaga on 11/11/23.
//

import Foundation

struct Food: Codable, Identifiable {
    let id: Int?
    let name: String?
    let image: String?
    let description: String?
    let latitude: String?
    let longitude: String?
    
    /* "id": 5,
     "name": "Causa",
     "image": "https://t2.rg.ltmcdn.com/es/posts/8/6/2/causa_limena_31268_orig.jpg",
     "description": "Comida típica de Lima",
     "latitude": "-12.0038596",
     "longitude": "-77.1529952"*/
}

extension Food {
    init(id: Int,
         name: String,
         image: String,
         description: String,
         latitude: String,
         longitude: String) {
            self.id = id
            self.name = name
            self.image = image
            self.description = description
            self.latitude = latitude
            self.longitude = longitude
        }
}
