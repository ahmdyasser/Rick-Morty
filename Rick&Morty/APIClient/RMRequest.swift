//
//  RMRequest.swift
//  Rick&Morty
//
//  Created by Ahmad Yasser on 24/12/2022.
//

import Foundation

/// Object that represents a single API call
final class RMRequest {
    /// API constants
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    private let endpoint: RMEndpoint
    
    /// Path components for api, if any
    private let pathComponents: Set<String>
    
    /// Path query parameters for api, if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseURL
        string += "/"
        string += endpoint.rawValue
        if !pathComponents.isEmpty {
            string += "/"
            pathComponents.forEach { string += "\($0)" }
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
                
            }).joined(separator: "&")
            
            string += argumentString
        }
         return string
    }
    
    // MARK: - Public
    
    /// Describing http method
    public let httpMethod = "GET"
    
    /// Computed and constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of path components
    ///   - queryParameters: Collection of query parameters
    public init(endpoint: RMEndpoint, pathComponents: Set<String> = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
