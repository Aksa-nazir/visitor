//
//  location.swift
//  visitor
//
//  Created by aksa nazir on 02/02/21.
//

import Foundation

struct Location: Decodable, Identifiable {
    
    let id: Int
    let name : String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
    
    static let example = Location(id: 1, name: "great smokey mountains " , country: "India", description: "A great place to visit", more: "more text here", latitude: 35.6574, longitude: -54.8765, heroPicture: "smokies", advisory: "Be aware of the bears")
}
