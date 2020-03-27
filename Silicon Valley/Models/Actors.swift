//
//  Actors.swift
//  Silicon Valley
//
//  Created by Andriy Yezerskiy on 19/03/2020.
//  Copyright © 2020 Andriy Yezerskiy. All rights reserved.
//

import Foundation

struct Actor: Hashable, Identifiable {
    let id = UUID()
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
