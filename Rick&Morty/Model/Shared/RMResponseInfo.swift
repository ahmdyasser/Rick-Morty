//
//  RMLocationInfo.swift
//  Rick&Morty
//
//  Created by Ahmad Yasser on 24/12/2022.
//

import Foundation

struct RMResponseInfo: Codable {
    var count: Int
    var pages: Int
    var next: String?
    var prev: String?
}
