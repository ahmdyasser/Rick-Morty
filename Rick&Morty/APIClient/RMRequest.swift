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
        static let baseURL = "rickandmortyapi.com"
    }
    
    private var urlComponents = URLComponents()
    /// Desired endpoint
    private let endpoint: RMEndpoint
    
    /// Path components for api, if any
    private let pathComponents: Set<String>
    
    /// Path query parameters for api, if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        urlComponents.scheme = "https"
        urlComponents.host = Constants.baseURL
        urlComponents.path = "/api/\(endpoint.rawValue)/\(pathComponents.joined(separator: "/"))"
        urlComponents.queryItems = queryParameters
        guard let url = urlComponents.url?.absoluteString else { fatalError("Invalid URL from url components") }
        
        return url
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
