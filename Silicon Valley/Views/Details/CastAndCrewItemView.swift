//
//  CastAndCrewItemView.swift
//  Silicon Valley
//
//  Created by Andriy Yezerskiy on 19/03/2020.
//  Copyright © 2020 Andriy Yezerskiy. All rights reserved.
//

/*
    Improvements:
    - Modal view containing info about the actor + other appearances in this or other shows
*/

import SwiftUI

struct CastAndCrewItemView: View {
    
    var name: String
    
    var body: some View {
        VStack {
            ZStack {
                
                Circle()
                    .foregroundColor(.gray)
                
                Image(systemName: "person.fill")
                    .resizable()
                    .foregroundColor(.white)
                    .frame(width: 40, height: 40)
                    
            }.frame(width: 80, height: 80)
            
            
            
            Text(name)
                .font(.caption)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .frame(width: 100)
            
            Spacer()
        }
    }
}


struct CastAndCrewItemView_Previews: PreviewProvider {
    static var previews: some View {
        CastAndCrewItemView(name: "Steve Jobs")
    }
}
