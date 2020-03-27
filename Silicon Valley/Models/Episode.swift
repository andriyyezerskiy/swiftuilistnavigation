//
//  Episode.swift
//  Silicon Valley
//
//  Created by Andriy Yezerskiy on 18/03/2020.
//  Copyright © 2020 Andriy Yezerskiy. All rights reserved.
//

/*
    Improvements:
    - Extract more data such as directors to add to details
*/

import SwiftUI

struct Episode: Hashable, Codable, Identifiable {
    let id = UUID()
    let plot: String
    let rated: String
    let title: String
    let ratings: [Rating]
    let writer: String
    let actors: String
    let type: String
    let imdbVotes: String
    let seriesID: String
    let season: String
    let director: String
    let released: String
    let awards: String
    let genre: String
    let imdbRating: String
    let posterURL: String
    let episode: String
    let language: String
    let country: String
    let runtime: String
    let imdbID: String
    let metascore: String
    let response: String
    let year: String
    
    enum CodingKeys: String, CodingKey {
        case plot = "Plot"
        case rated = "Rated"
        case title = "Title"
        case ratings = "Ratings"
        case writer = "Writer"
        case actors = "Actors"
        case type = "Type"
        case imdbVotes
        case seriesID
        case season = "Season"
        case director = "Director"
        case released = "Released"
        case awards = "Awards"
        case genre = "Genre"
        case imdbRating
        case posterURL = "Poster"
        case episode = "Episode"
        case language = "Language"
        case country = "Country"
        case runtime = "Runtime"
        case imdbID
        case metascore = "Metascore"
        case response = "Response"
        case year = "Year"
    }
}

extension Episode {
    
    var actorsArray: [Actor] {
        actors.components(separatedBy: ", ").map{Actor(name: $0)}
    }
}
