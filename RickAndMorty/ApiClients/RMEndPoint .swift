//
//  RMEndPoint .swift
//  RickAndMorty
//
//  Created by Dilnura Rizaeva on 30.12.2024.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndPoint: String {

    /// Endpoint to get characher info
    case character

    /// Endpoint to get location info
    case location

    /// Endpoint to get episode info
    case episode

}
