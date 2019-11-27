//
//  Apod.swift
//  NASAImageOfTheDaySDK
//
//  Created by Stewart Thomson on 25/11/2019.
//  Copyright © 2019 Stewart Thomson. All rights reserved.
//

import Foundation

public struct Apod: Codable {
    public let copyright: String?
    public let date: String
    public let explanation: String
    public let hdurl: String
    public let mediaType: String
    public let serviceVersion: String
    public let title: String
    public let url: String
    
    enum CodingKeys: String, CodingKey {
        case copyright
        case date
        case explanation
        case hdurl
        case mediaType = "media_type"
        case serviceVersion = "service_version"
        case title
        case url
    }
}
