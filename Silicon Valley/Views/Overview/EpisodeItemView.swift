//
//  EpisodeItemView.swift
//  Silicon Valley
//
//  Created by Andriy Yezerskiy on 18/03/2020.
//  Copyright © 2020 Andriy Yezerskiy. All rights reserved.
//

/*
    Improvements:
    - Adapt image size for UI on iPad
*/

import SwiftUI

struct EpisodeItemView: View {
    
    var episode: Episode
    
    var body: some View {
        NavigationLink(destination: DetailsView(episode: episode)) {
            VStack(alignment: .center, spacing: 0) {
                
                URLImage(imageURL: episode.posterURL)
                    .frame(width: 300, height: 175)
                
                ZStack {
                    Color.white
                    
                    VStack(alignment: .leading, spacing: 5) {
                        HStack {
                            Text(episode.title)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                        
                        HStack {
                            Text("S\(episode.season)")
                                .font(.caption)
                                .foregroundColor(.gray)
                            
                            Text("E\(episode.episode)")
                                .font(.caption)
                                .foregroundColor(.gray)
                            
                            Spacer()
                        }
                    }
                    .padding(.leading, 5)
                }
                .frame(height: 50)
            }
            .cornerRadius(8.0)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct EpisodeView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeItemView(episode: tvShow.seasons[0].episodes[0])
            .frame(width: 300, height: 225)
    }
}
