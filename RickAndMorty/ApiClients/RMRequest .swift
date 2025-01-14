//
//  RMRequest .swift
//  RickAndMorty
//
//  Created by Dilnura Rizaeva on 27.12.2024.
//

import Foundation

/// Object that represents a single API call
final class RMRequest {

    /// API constants
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api"
    }


    /// desired endpoint
    private let endPoint: RMEndPoint

    /// Path components for API, if any
    private let pathComponents: Set<String> 

    /// Query arguments for API, if any
    private let queryParameters: [URLQueryItem]


    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseURL
        string += "/"
        string += endPoint.rawValue

        if !pathComponents .isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }

        if !queryParameters .isEmpty {
                string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "/\($0.name)=\(value)"
            }).joined(separator: "&")

            string += argumentString
        }
        return string
    }



    /// computed & constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }

    /// Desired HTTP method
    public let  httpMethod = "GET"
    //MARK: - Public

    /// Construct request
    /// - Parameters:
    ///   - endPoint: Target endpoint
    ///   - pathComponents: Collection of path components
    ///   - queryParameters: collection of query components
   public init(
        endPoint: RMEndPoint,
        pathComponents: Set<String> = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endPoint = endPoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}

