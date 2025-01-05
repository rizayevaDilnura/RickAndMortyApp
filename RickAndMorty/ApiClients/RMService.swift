//
//  RMService.swift
//  RickAndMorty
//
//  Created by Dilnura Rizaeva on 27.12.2024.
//

import Foundation

/// Primary API service object to get Rick and Morty data

private class RMService {



    /// shared singleton instance
    static let shared = RMService()


    /// privatized constuctor
    private init() {}


    /// Send Rick and Morty  API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error 
    public func execute(_ request: RMRequest , completion: @escaping () -> Void ) {

    }

}
