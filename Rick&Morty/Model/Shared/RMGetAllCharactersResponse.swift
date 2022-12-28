//
//  RMGetAllCharactersResponse.swift
//  Rick&Morty
//
//  Created by Ahmad Yasser on 28/12/2022.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    let info: RMResponseInfo
    let results: [RMCharacter]
}
