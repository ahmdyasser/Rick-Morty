//
//  RMLocationResult.swift
//  Rick&Morty
//
//  Created by Ahmad Yasser on 24/12/2022.
//

import Foundation

struct RMLocation: Codable {
    var id: Int
    var name: String
    var type: String
    var dimension: String
    var residents: [String]
    var url: String
    var created: String
}
