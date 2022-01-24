//
//  Genre.swift
//  Challenge-M2Y-TM4
//
//  Created by Felipe Brigagão de Almeida on 23/01/22.
//

import Foundation

struct Genre: Decodable {
    let id: Int
    let name: String
}

struct GenresList: Decodable {
    let genres: [Genre]
}
