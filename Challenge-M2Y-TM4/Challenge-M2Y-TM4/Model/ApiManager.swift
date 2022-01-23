//
//  ApiRequest.swift
//  Challenge-M2Y-TM4
//
//  Created by Felipe Brigagão de Almeida on 21/01/22.
//

import Foundation
import Alamofire

// TODO: Create a specific file.
enum ApiError: Error {
    case requestError
}

class ApiManager {
    static let shared = ApiManager()
    
    func getMovie(url: String, completion: @escaping(Result<Movie, Error>) -> Void) {
        AF.request(url, method: .get).responseDecodable { (response: DataResponse<Movie, AFError>) in
            guard let movie = response.value, response.error == nil else {
                completion(.failure(ApiError.requestError))
                return
            }
            completion(.success(movie))
        }
    }
    
    func getMoviesList(url: String, completion: @escaping(Result<[MoviesList], Error>) -> Void) {
        AF.request(url, method: .get).responseDecodable { (response: DataResponse<[MoviesList], AFError>) in
            guard let moviesList = response.value, response.error == nil else {
                completion(.failure(ApiError.requestError))
                return
            }
            completion(.success(moviesList))
        }
    }
}
