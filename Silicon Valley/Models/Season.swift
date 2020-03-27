//
//  Season.swift
//  Silicon Valley
//
//  Created by Andriy Yezerskiy on 18/03/2020.
//  Copyright © 2020 Andriy Yezerskiy. All rights reserved.
//

import Foundation

struct Season: Hashable, Codable, Identifiable {
    let id = UUID()
    let episodes: [Episode]
}
