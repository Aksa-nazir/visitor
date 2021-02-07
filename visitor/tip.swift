//
//  tip.swift
//  visitor
//
//  Created by aksa nazir on 06/02/21.
//

import Foundation
struct Tip : Decodable {
    let text: String
    let children: [Tip]?
}
