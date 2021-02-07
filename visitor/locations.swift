//
//  locations.swift
//  visitor
//
//  Created by aksa nazir on 03/02/21.
//

import Foundation

class Locations: ObservableObject {
    let places: [Location]
    
    var primary: Location{
        places[0]
    }
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
        
    }
}
