//
//  Location.swift
//  RickAndMorty
//
//  Created by Dilnura Rizaeva on 19.12.2024.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
