//
//  ApiRequest.swift
//  Challenge-M2Y-TM4
//
//  Created by Felipe Brigagão de Almeida on 21/01/22.
//

import Foundation
import Alamofire
import SwiftUI

class ApiManager {
    static let shared = ApiManager()
    var genres: [Int : String] = [:]
    
    init() {
       getGenres(url: "https://api.themoviedb.org/3/genre/movie/list?api_key=3066657fbf3c19a5a89806e76ea61a19&language=en-US")
    }
        
    func getMovie(url: String, completion: @escaping(Result<Movie, Error>) -> Void) {
        AF.request(url, method: .get).responseDecodable { (response: DataResponse<Movie, AFError>) in
            guard let movie = response.value, response.error == nil else {
                completion(.failure(ApiError.requestError))
                return
            }
            completion(.success(movie))
        }
    }
    
    func getMoviesList(url: String, completion: @escaping(Result<MoviesListResult, Error>) -> Void) {
        AF.request(url, method: .get).responseDecodable { (response: DataResponse<MoviesListResult, AFError>) in
            guard let moviesList = response.value, response.error == nil else {
                completion(.failure(ApiError.requestError))
                return
            }
            completion(.success(moviesList))
        }
    }
    
    private func getGenres(url: String) {
        func fillGenreDictionary(genres: [Genre]) {
            for genre in genres {
                self.genres[genre.id] = genre.name
            }
        }
        AF.request(url, method: .get).responseDecodable { (response: DataResponse<GenresList, AFError>) in
            guard let list = response.value, response.error == nil else {
                return
            }
            fillGenreDictionary(genres: list.genres)
        }
    }
}
