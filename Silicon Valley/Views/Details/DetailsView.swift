//
//  DetailsView.swift
//  Silicon Valley
//
//  Created by Andriy Yezerskiy on 19/03/2020.
//  Copyright © 2020 Andriy Yezerskiy. All rights reserved.
//

import SwiftUI

struct DetailsView: View {
    
    var episode: Episode
        
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(spacing: 30) {
                VStack(spacing: 30) {
                    
                    URLImage(imageURL: episode.posterURL)
                        .frame(height: 200)
                        .cornerRadius(8)
                        .shadow(radius: 10)
                    
                    VStack(spacing: 5) {
                        Text(episode.title)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        HStack() {
                            Text("S\(episode.season) E\(episode.episode) · \(episode.released) · \(episode.runtime)")
                                .font(.caption)
                                .fontWeight(.light)
                        }
                    }
                    
                    Text(episode.plot)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                    
                    HStack(alignment: .center, spacing: 10) {
                        Image(systemName: "star.fill")
                            .font(.caption)
                        
                        Text("\(episode.imdbRating)/10")
                            .font(.caption)
                        
                        
                        HStack(spacing: 5) {
                            Image(systemName: "hand.thumbsup.fill")
                                .font(.caption)
                            
                            Image(systemName: "hand.thumbsdown.fill")
                            .font(.caption)
                        }
                        
                        Text(episode.imdbVotes)
                            .font(.caption)
                        
                        Spacer()
                    }
                }
                .padding(.horizontal, 30)
                
                VStack {
                    HStack {
                        Text("Actors")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Spacer()
                    }.padding(.leading, 30)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(episode.actorsArray) { actor in
                                CastAndCrewItemView(name: actor.name)
                                    .frame(width: 100, height: 130)
                            }
                        }.padding(.leading, 30)
                    }
                }                
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(episode: tvShow.seasons[0].episodes[0])
    }
}
