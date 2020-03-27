//
//  SeasonRow.swift
//  Silicon Valley
//
//  Created by Andriy Yezerskiy on 18/03/2020.
//  Copyright © 2020 Andriy Yezerskiy. All rights reserved.
//

/*
 
 Known SwiftUI bugs:
 
 - Shadow is not part of the frame calculation, but instead is applied to the frame.
 - Known fix: Providing padding around the item view seems to fix this issue
 
*/

import SwiftUI

struct SeasonRow: View {
    
    var season: Season
    
    var body: some View {
        VStack(alignment: .leading) {
            
            // Check if all episodes have the same season name before adding it
            Text("Season \(season.episodes.allSatisfy({$0.season == season.episodes.first?.season}) ? season.episodes.first?.season ?? "" : "" )")
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 15)
                .padding(.bottom, 10)
                
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(season.episodes) { episode in
                        EpisodeItemView(episode: episode)
                            .frame(width: 300, height: 225)
                            .shadow(radius: 3)
                            .padding(.vertical, 5)
                            .padding(.horizontal, 5)
                    }
                }
                .padding(.leading, 10)
            }
            .padding(.bottom, 15)
        }
    }
}

struct SeasonRow_Previews: PreviewProvider {
    static var previews: some View {
        SeasonRow(season: tvShow.seasons[0])
    }
}
