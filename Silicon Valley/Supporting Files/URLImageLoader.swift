//
//  URLImageLoader.swift
//  Silicon Valley
//
//  Created by Andriy Yezerskiy on 18/03/2020.
//  Copyright © 2020 Andriy Yezerskiy. All rights reserved.
//

import SwiftUI
import Combine

class URLImageLoader: ObservableObject {
    
    let objectWillChange = PassthroughSubject<UIImage?, Never>()
    
    var image: UIImage? {
        didSet {
            objectWillChange.send(image)
        }
    }
    
    init(imageURL: String) {
        guard let url = URL(string: imageURL) else {return}
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {return}
            
            DispatchQueue.main.async {
                self.image = UIImage(data: data)
            }
        }.resume()
    }
}
