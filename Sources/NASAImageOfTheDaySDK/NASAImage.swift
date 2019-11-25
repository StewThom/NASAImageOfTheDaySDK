//
//  NASAImage.swift
//  NASAImageOfTheDaySDK
//
//  Created by Stewart Thomson on 25/11/2019.
//  Copyright © 2019 Stewart Thomson. All rights reserved.
//

import Foundation

public typealias NASAApiKey = String

public class NASAImage {
    
    let dataFetcher: DataFetcher
    
    public init(with apiKey: NASAApiKey) {
        self.dataFetcher = DataFetcher(apiKey: apiKey)
    }
    
    public func fetchImageOfTheDay(completion: @escaping (Apod?) -> Void) {
        if let url = URL(string: "https://api.nasa.gov/planetary/apod") {
            dataFetcher.get(url: url, completion: completion)
        }
    }
}
