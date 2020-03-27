//
//  URLImage.swift
//  Silicon Valley
//
//  Created by Andriy Yezerskiy on 18/03/2020.
//  Copyright © 2020 Andriy Yezerskiy. All rights reserved.
//

import SwiftUI

struct URLImage: View {
    
    @ObservedObject var urlImageLoader: URLImageLoader
    
    init(imageURL: String) {
        urlImageLoader = URLImageLoader(imageURL: imageURL)
    }
    
    var body: some View {
        Image(uiImage: urlImageLoader.image ?? UIImage())
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fill)
    }
}

struct URLImage_Previews: PreviewProvider {
    static var previews: some View {
        URLImage(imageURL: tvShow.seasons[0].episodes[0].posterURL)
    }
}
