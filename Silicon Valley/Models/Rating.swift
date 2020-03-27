//
//  Rating.swift
//  Silicon Valley
//
//  Created by Andriy Yezerskiy on 18/03/2020.
//  Copyright © 2020 Andriy Yezerskiy. All rights reserved.
//

import Foundation

struct Rating: Hashable, Codable, Identifiable {
    let id = UUID()
    var source: String
    var value: String
    
    enum CodingKeys: String, CodingKey  {
        case source = "Source"
        case value = "Value"
    }
}
