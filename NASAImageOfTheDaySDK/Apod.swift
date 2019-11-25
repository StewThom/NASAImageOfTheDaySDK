//
//  Apod.swift
//  NASAImageOfTheDaySDK
//
//  Created by Stewart Thomson on 25/11/2019.
//  Copyright © 2019 Stewart Thomson. All rights reserved.
//

import Foundation

public struct Apod: Codable {
    let copyright, date, explanation: String
    let hdurl: String
    let mediaType, serviceVersion, title: String
    let url: String
    
    enum CodingKeys: String, CodingKey {
        case copyright, date, explanation, hdurl
        case mediaType = "media_type"
        case serviceVersion = "service_version"
        case title, url
    }
}
