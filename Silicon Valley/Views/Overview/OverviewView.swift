//
//  OverviewView.swift
//  Silicon Valley
//
//  Created by Andriy Yezerskiy on 18/03/2020.
//  Copyright © 2020 Andriy Yezerskiy. All rights reserved.
//

/*
 
 Known SwiftUI bugs:
 
 - Can't select same row twice in SwiftUI.
 
 Update for iOS 13.3 release:
 The bug is fixed on physical devices but is still present on emulator.
 
*/

/*
    Improvements:
    - Fix landscape safe area issue on iPhone in landscape.
*/

import SwiftUI

struct OverviewView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(tvShow.seasons) { season in
                        SeasonRow(season: season)
                            .listRowInsets(EdgeInsets())
                    }
                }
            }
            .navigationBarTitle(tvShow.title)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct OverviewView_Previews: PreviewProvider {
    static var previews: some View {
        OverviewView()
    }
}
