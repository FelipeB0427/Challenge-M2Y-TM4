//
//  Movie.swift
//  Challenge-M2Y-TM4
//
//  Created by Felipe Brigagão de Almeida on 21/01/22.
//

import Foundation

/// Uma (struct) que contem as informações desejadas de um filme.
struct Movie: Decodable {
    let id: Int
    let title: String
    let popularity: Double
    let vote_count: Int
    let release_date: String
    let poster_path: String?
}
