//
//  LoadMovieImage.swift
//  Challenge-M2Y-TM4
//
//  Created by Felipe Brigagão de Almeida on 23/01/22.
//

import SwiftUI

extension Image {
    func loadImage(endPoint: String) -> Self {
        if let image = try? Data(contentsOf: URL(string: "https://image.tmdb.org/t/p/w500/\(endPoint)")!) {
            return Image(uiImage: UIImage(data: image)!)
                .resizable()
        }
        
        return self
            .resizable()
    }
}
