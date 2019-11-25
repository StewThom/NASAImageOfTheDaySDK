//
//  DataFetcher.swift
//  QuoteOfTheDaySDK
//
//  Created by Stewart Thomson on 22/11/2019.
//  Copyright © 2019 Stewart Thomson. All rights reserved.
//

import Foundation

class DataFetcher {
    
    private let apiKey: String
    
    init(apiKey: String) {
        self.apiKey = apiKey
    }
    
    func get<T: Codable>(url: URL, completion: @escaping (T?) -> Void) {
        var urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: false)
        urlComponents?.queryItems = [URLQueryItem(name: "api_key", value: apiKey)]
        if let url = urlComponents?.url {
            let request = URLRequest(url: url)
            URLSession.shared.dataTask(with: request) { (data, _, error) in
                guard error == nil, let data = data else {
                    print("Request Error: \(error as Any)")
                    completion(nil)
                    return
                }
                do {
                    let object = try JSONDecoder().decode(T.self, from: data)
                    completion(object)
                } catch {
                    print("Decoding Error: \(error)")
                    completion(nil)
                }
            }.resume()
        } else {
            completion(nil)
        }
    }
}
