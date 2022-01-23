//
//  MoviesList.swift
//  Challenge-M2Y-TM4
//
//  Created by Felipe Brigagão de Almeida on 22/01/22.
//

import Foundation

/// Uma (struct) que contem as informações desejadas dos filmes similares.
struct MoviesList: Codable {
    let id: Int
    let title: String
    let genre_ids: [Int]
    let release_date: String
    let poster_patb: String
}
